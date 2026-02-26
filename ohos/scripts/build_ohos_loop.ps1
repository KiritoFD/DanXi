param(
  [ValidateSet("debug", "release", "profile")]
  [string]$Mode = "debug",
  [string]$ProjectRoot = "",
  [int]$MaxAttempts = 0,
  [int]$RetryDelaySeconds = 2,
  [switch]$RecloneFlutterSdk,
  [string]$FlutterSdkPath = "C:\Users\xy\flutter_flutter",
  [string]$FlutterSdkGitUrl = "https://gitcode.com/openharmony-tpc/flutter_flutter.git",
  [switch]$DeepCleanCaches = $true,
  [switch]$UseOhosDependencyProfile = $true
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Step {
  param([string]$Message)
  Write-Host "[ohos-official-loop] $Message"
}

function Resolve-ProjectRoot {
  param([string]$InputRoot)
  if ($InputRoot -and (Test-Path $InputRoot)) {
    return (Resolve-Path $InputRoot).Path
  }
  if (Test-Path (Join-Path $PSScriptRoot "..\..\pubspec.yaml")) {
    return (Resolve-Path (Join-Path $PSScriptRoot "..\..")).Path
  }
  if (Test-Path (Join-Path $PSScriptRoot "..\pubspec.yaml")) {
    return (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
  }
  throw "Cannot resolve project root. Pass -ProjectRoot explicitly."
}

function Ensure-Dir {
  param([string]$Path)
  New-Item -Path $Path -ItemType Directory -Force | Out-Null
}

function Escape-PropertiesPath {
  param([string]$Path)
  return $Path.Replace('\', '\\')
}

function Remove-IfExists {
  param([string]$Path)
  if (Test-Path $Path) {
    Remove-Item -Recurse -Force $Path -ErrorAction SilentlyContinue
  }
}

function Restore-TrackedPath {
  param(
    [string]$RepoRoot,
    [string]$TargetPath
  )
  if (-not (Test-Path (Join-Path $RepoRoot ".git"))) {
    return
  }
  & git -C $RepoRoot checkout -- $TargetPath
  if ($LASTEXITCODE -ne 0) {
    throw "git checkout failed for '$TargetPath' in '$RepoRoot'"
  }
}

function Activate-OhosDependencyProfile {
  param([string]$ProjectRoot)
  $profilePubspec = Join-Path $ProjectRoot "ohos\dependency_snapshots\pubspec.ohos.yaml"
  $profileLock = Join-Path $ProjectRoot "ohos\dependency_snapshots\pubspec.ohos.lock"
  $rootPubspec = Join-Path $ProjectRoot "pubspec.yaml"
  $rootLock = Join-Path $ProjectRoot "pubspec.lock"
  if (-not (Test-Path $profilePubspec)) {
    return @{ Activated = $false }
  }
  $pubspecBackup = "$rootPubspec.ohosbak"
  $lockBackup = "$rootLock.ohosbak"
  Copy-Item -Force $rootPubspec $pubspecBackup
  if (Test-Path $rootLock) {
    Copy-Item -Force $rootLock $lockBackup
  }
  Copy-Item -Force $profilePubspec $rootPubspec
  if (Test-Path $profileLock) {
    Copy-Item -Force $profileLock $rootLock
  }
  return @{
    Activated = $true
    PubspecBackup = $pubspecBackup
    LockBackup = $lockBackup
    RootPubspec = $rootPubspec
    RootLock = $rootLock
    ProfilePubspec = $profilePubspec
    ProfileLock = $profileLock
  }
}

function Restore-OhosDependencyProfile {
  param([hashtable]$State)
  if (-not $State -or -not $State.Activated) {
    return
  }
  if ($State.PubspecBackup -and (Test-Path $State.PubspecBackup)) {
    Copy-Item -Force $State.PubspecBackup $State.RootPubspec
    Remove-Item -Force $State.PubspecBackup -ErrorAction SilentlyContinue
  }
  if ($State.LockBackup -and (Test-Path $State.LockBackup)) {
    Copy-Item -Force $State.LockBackup $State.RootLock
    Remove-Item -Force $State.LockBackup -ErrorAction SilentlyContinue
  } elseif ($State.RootLock -and (Test-Path $State.RootLock) -and -not (Test-Path $State.ProfileLock)) {
    Remove-Item -Force $State.RootLock -ErrorAction SilentlyContinue
  }
}

function Invoke-LoggedCommand {
  param(
    [string]$FilePath,
    [string]$Arguments,
    [string]$WorkingDirectory,
    [string]$LogFile,
    [hashtable]$EnvVars
  )
  $outFile = "$LogFile.stdout.tmp"
  $errFile = "$LogFile.stderr.tmp"
  if (Test-Path $outFile) { Remove-Item -Force $outFile }
  if (Test-Path $errFile) { Remove-Item -Force $errFile }

  $oldEnv = @{}
  if ($EnvVars) {
    foreach ($k in $EnvVars.Keys) {
      $oldEnv[$k] = [Environment]::GetEnvironmentVariable($k, "Process")
      [Environment]::SetEnvironmentVariable($k, [string]$EnvVars[$k], "Process")
    }
  }

  try {
    $p = Start-Process -FilePath $FilePath `
      -ArgumentList $Arguments `
      -WorkingDirectory $WorkingDirectory `
      -NoNewWindow `
      -Wait `
      -PassThru `
      -RedirectStandardOutput $outFile `
      -RedirectStandardError $errFile
  } finally {
    if ($EnvVars) {
      foreach ($k in $EnvVars.Keys) {
        [Environment]::SetEnvironmentVariable($k, $oldEnv[$k], "Process")
      }
    }
  }

  if (Test-Path $outFile) { Get-Content $outFile | Tee-Object -FilePath $LogFile -Append | Out-Host }
  if (Test-Path $errFile) { Get-Content $errFile | Tee-Object -FilePath $LogFile -Append | Out-Host }
  Remove-Item -Force -ErrorAction SilentlyContinue $outFile, $errFile
  return $p.ExitCode
}

function Ensure-FlutterSdk {
  param(
    [string]$SdkPath,
    [string]$GitUrl,
    [bool]$DoReclone
  )
  if ($DoReclone) {
    Write-Step "Recloning Flutter SDK: $SdkPath"
    Remove-IfExists $SdkPath
    Ensure-Dir (Split-Path -Parent $SdkPath)
    & git clone $GitUrl $SdkPath
    if ($LASTEXITCODE -ne 0) {
      throw "Failed to clone Flutter SDK from $GitUrl"
    }
  }
  if (-not (Test-Path (Join-Path $SdkPath "bin\flutter.bat"))) {
    throw "Flutter SDK not found at $SdkPath"
  }
}

function Ensure-LocalProperties {
  param(
    [string]$ProjectRoot,
    [string]$FlutterRoot
  )
  $sdk = "C:\Program Files\Huawei\DevEco Studio\sdk"
  $node = "C:\Program Files\Huawei\DevEco Studio\tools\node"
  $path = Join-Path $ProjectRoot "ohos\local.properties"
  $content = @(
    "hwsdk.dir=$(Escape-PropertiesPath $sdk)"
    "nodejs.dir=$(Escape-PropertiesPath $node)"
    "flutter.sdk=$(Escape-PropertiesPath $FlutterRoot)"
    "flutter.versionName=1.5.0"
    "flutter.versionCode=347"
  ) -join "`r`n"
  Set-Content -Path $path -Value $content -Encoding ASCII
}

function Prepare-HarWorkspace {
  param(
    [string]$WorkspaceRoot,
    [string]$FlutterExe,
    [string]$Mode,
    [hashtable]$EnvVars,
    [string]$LogFile
  )
  $moduleDir = Join-Path $WorkspaceRoot "module_build"
  Remove-IfExists $moduleDir
  Ensure-Dir $WorkspaceRoot
  $createArgs = "/c `"$FlutterExe`" create --template=module --org danxi.dev $moduleDir"
  $ec = Invoke-LoggedCommand -FilePath "cmd.exe" -Arguments $createArgs -WorkingDirectory $WorkspaceRoot -LogFile $LogFile -EnvVars $EnvVars
  if ($ec -ne 0) {
    return @{ Success = $false; ModuleDir = $moduleDir }
  }
  $buildHarArgs = "/c `"$FlutterExe`" build har --$Mode"
  $ec = Invoke-LoggedCommand -FilePath "cmd.exe" -Arguments $buildHarArgs -WorkingDirectory $moduleDir -LogFile $LogFile -EnvVars $EnvVars
  return @{
    Success = ($ec -eq 0)
    ModuleDir = $moduleDir
  }
}

function Copy-HarArtifacts {
  param(
    [string]$HarSourceDir,
    [string]$TargetDir,
    [string]$AttemptDir
  )
  Ensure-Dir $TargetDir
  Ensure-Dir (Join-Path $AttemptDir "har")
  if (Test-Path $HarSourceDir) {
    Get-ChildItem $HarSourceDir -Filter *.har -File | ForEach-Object {
      Copy-Item -Force $_.FullName (Join-Path $AttemptDir "har" $_.Name)
      if ($_.Name -eq "flutter.har") {
        Copy-Item -Force $_.FullName (Join-Path $TargetDir "flutter.har")
      }
    }
  }
}

function Find-HapOutput {
  param([string]$ProjectRoot)
  $candidates = @(
    Join-Path $ProjectRoot "build\ohos\hap\entry-default-signed.hap"
    Join-Path $ProjectRoot "ohos\entry\build\default\outputs\default\entry-default-signed.hap"
  )
  foreach ($p in $candidates) {
    if (Test-Path $p) { return $p }
  }
  return $null
}

$root = Resolve-ProjectRoot -InputRoot $ProjectRoot
$ohosDir = Join-Path $root "ohos"
if (-not (Test-Path $ohosDir)) {
  throw "ohos directory not found: $ohosDir"
}

Ensure-FlutterSdk -SdkPath $FlutterSdkPath -GitUrl $FlutterSdkGitUrl -DoReclone:$RecloneFlutterSdk
$flutterExe = Join-Path $FlutterSdkPath "bin\flutter.bat"
$flutterHvigorRel = "packages/flutter_tools/hvigor"
$devecoNode = "C:\Program Files\Huawei\DevEco Studio\tools\node"
$devecoHvigor = "C:\Program Files\Huawei\DevEco Studio\tools\hvigor\bin"
$envBasePath = "$devecoNode;$devecoHvigor;$env:PATH"

$logsRoot = Join-Path $root "dist\official_pipeline"
$logsDir = Join-Path $logsRoot "logs"
$workspaceRoot = Join-Path $logsRoot "workspace"
$artifactsRoot = Join-Path $logsRoot "artifacts"
Ensure-Dir $logsDir
Ensure-Dir $workspaceRoot
Ensure-Dir $artifactsRoot

$depProfileState = $null
try {
  if ($UseOhosDependencyProfile) {
    $depProfileState = Activate-OhosDependencyProfile -ProjectRoot $root
    if ($depProfileState.Activated) {
      Write-Step "Activated OHOS dependency profile: $($depProfileState.ProfilePubspec)"
      $pubGetLog = Join-Path $logsDir "pubget_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"
      $pubGetExit = Invoke-LoggedCommand -FilePath "cmd.exe" -Arguments "/c `"$flutterExe`" pub get" -WorkingDirectory $root -LogFile $pubGetLog -EnvVars $null
      if ($pubGetExit -ne 0) {
        throw "flutter pub get failed."
      }
    } else {
      Write-Step "OHOS dependency profile not found, using root pubspec."
    }
  }

  $attempt = 0
  while ($true) {
  $attempt++
  if ($MaxAttempts -gt 0 -and $attempt -gt $MaxAttempts) {
    throw "Exceeded max attempts ($MaxAttempts) without producing a valid hap."
  }

  $stamp = Get-Date -Format "yyyyMMdd_HHmmss"
  $attemptTag = "attempt_{0:D3}_{1}" -f $attempt, $stamp
  $attemptDir = Join-Path $artifactsRoot $attemptTag
  Ensure-Dir $attemptDir

  Write-Step "========== $attemptTag =========="
  Write-Step "Restoring repositories to avoid poisoned state..."
  Restore-TrackedPath -RepoRoot $root -TargetPath "ohos"
  Restore-TrackedPath -RepoRoot $FlutterSdkPath -TargetPath $flutterHvigorRel

  Write-Step "Cleaning caches and temporary directories..."
  Remove-IfExists (Join-Path $root "ohos\.hvigor")
  Remove-IfExists (Join-Path $root "ohos\.hvigor.bak")
  Remove-IfExists (Join-Path $root "ohos\node_modules")
  Remove-IfExists (Join-Path $root "ohos\oh_modules")
  Remove-IfExists (Join-Path $root "ohos\entry\build")
  Remove-IfExists (Join-Path $root "build\ohos")
  Remove-IfExists (Join-Path $root "ohos\entry\src\main\resources\rawfile\buildinfo.json5")
  Remove-IfExists (Join-Path $root "ohos\entry\src\main\resources\rawfile\framesconfig.json")
  if ($DeepCleanCaches) {
    Remove-IfExists (Join-Path $root ".dart_tool\build")
  }

  Ensure-LocalProperties -ProjectRoot $root -FlutterRoot $FlutterSdkPath

  $commonEnv = @{
    "PATH" = $envBasePath
    "NODE_HOME" = $devecoNode
    "NPM_CONFIG_INSTALL_LINKS" = "true"
  }

  $harLog = Join-Path $logsDir "${attemptTag}_har.log"
  $hapLog = Join-Path $logsDir "${attemptTag}_hap.log"

  Write-Step "HAR stage: trying current project first..."
  $harArgs = "/c `"$flutterExe`" build har --$Mode"
  $harExit = Invoke-LoggedCommand -FilePath "cmd.exe" -Arguments $harArgs -WorkingDirectory $root -LogFile $harLog -EnvVars $commonEnv

  $harSourceDir = Join-Path $root ".ohos\har"
  if ($harExit -ne 0) {
    $harText = if (Test-Path $harLog) { Get-Content $harLog -Raw } else { "" }
    if ($harText -match "current project is not module") {
      Write-Step "Current project is app. Creating temporary module for HAR production..."
      $ret = Prepare-HarWorkspace -WorkspaceRoot $workspaceRoot -FlutterExe $flutterExe -Mode $Mode -EnvVars $commonEnv -LogFile $harLog
      if ($ret.Success) {
        $harSourceDir = Join-Path $ret.ModuleDir ".ohos\har"
      } else {
        Write-Step "HAR stage failed. Will retry."
        Start-Sleep -Seconds $RetryDelaySeconds
        continue
      }
    } else {
      Write-Step "HAR stage failed. Will retry."
      Start-Sleep -Seconds $RetryDelaySeconds
      continue
    }
  }

  Copy-HarArtifacts -HarSourceDir $harSourceDir -TargetDir (Join-Path $root "ohos\entry\har") -AttemptDir $attemptDir
  Write-Step "HAR stage done."

  Write-Step "HAP stage: build hap independently..."
  $hapArgs = "/c `"$flutterExe`" build hap --$Mode"
  $hapExit = Invoke-LoggedCommand -FilePath "cmd.exe" -Arguments $hapArgs -WorkingDirectory $root -LogFile $hapLog -EnvVars $commonEnv

  $hapFile = Find-HapOutput -ProjectRoot $root
  $sdkHvigorOk = Test-Path (Join-Path $FlutterSdkPath "packages\flutter_tools\hvigor\index.ts")
  $entryOhPackageOk = Test-Path (Join-Path $root "ohos\entry\oh-package.json5")

  if ($hapExit -eq 0 -and $hapFile -and $sdkHvigorOk -and $entryOhPackageOk) {
    $finalHap = Join-Path $attemptDir (Split-Path -Leaf $hapFile)
    Copy-Item -Force $hapFile $finalHap
    Write-Step "SUCCESS: hap generated at $hapFile"
    Write-Step "Archived artifact: $finalHap"
    Write-Step "Logs: $harLog , $hapLog"
    break
  }

  Write-Step "HAP stage failed or side-effects detected. Restoring and retrying..."
  Restore-TrackedPath -RepoRoot $root -TargetPath "ohos"
  Restore-TrackedPath -RepoRoot $FlutterSdkPath -TargetPath $flutterHvigorRel
  Start-Sleep -Seconds $RetryDelaySeconds
}
} finally {
  Restore-OhosDependencyProfile -State $depProfileState
}

Write-Step "Pipeline completed."

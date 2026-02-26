param(
  [ValidateSet("debug", "release", "profile")]
  [string]$Mode = "debug",
  [string]$ProjectRoot = "",
  [switch]$NoRestore,
  [switch]$SkipSdkRestore,
  [switch]$UseOhosDependencyProfile,
  [switch]$RefreshDependencies,
  [switch]$UseNoPub = $true
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Step {
  param([string]$Message)
  Write-Host "[build-ohos-safe] $Message"
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

function Resolve-FlutterRootFromPath {
  $flutterCmd = Get-Command flutter -ErrorAction SilentlyContinue
  if (-not $flutterCmd) {
    throw "flutter command not found in PATH."
  }
  $flutterBin = Split-Path -Parent $flutterCmd.Source
  return (Resolve-Path (Join-Path $flutterBin "..")).Path
}

function Restore-TrackedPath {
  param(
    [string]$RepoRoot,
    [string]$TargetPath
  )
  if (-not (Test-Path (Join-Path $RepoRoot ".git"))) {
    Write-Step "Skip restore for $TargetPath (not a git repo): $RepoRoot"
    return
  }
  & git -C $RepoRoot checkout -- $TargetPath
  if ($LASTEXITCODE -ne 0) {
    throw "git checkout failed for '$TargetPath' in '$RepoRoot'."
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

$root = Resolve-ProjectRoot -InputRoot $ProjectRoot
$ohosDir = Join-Path $root "ohos"
if (-not (Test-Path $ohosDir)) {
  throw "ohos directory not found: $ohosDir"
}

$devecoNodeDir = "C:\Program Files\Huawei\DevEco Studio\tools\node"
if (Test-Path $devecoNodeDir) {
  $env:PATH = "$devecoNodeDir;$env:PATH"
  Write-Step "Using DevEco Node at: $devecoNodeDir"
} else {
  Write-Step "DevEco Node not found, using current PATH node."
}

$flutterRoot = Resolve-FlutterRootFromPath
$flutterHvigorRel = "packages/flutter_tools/hvigor"

if (-not $NoRestore) {
  Write-Step "Restoring project ohos files..."
  Restore-TrackedPath -RepoRoot $root -TargetPath "ohos"
  if (-not $SkipSdkRestore) {
    Write-Step "Restoring Flutter SDK hvigor plugin files..."
    Restore-TrackedPath -RepoRoot $flutterRoot -TargetPath $flutterHvigorRel
  }
}

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$logsDir = Join-Path $root "dist\build_logs"
New-Item -ItemType Directory -Force -Path $logsDir | Out-Null
$logFile = Join-Path $logsDir "ohos_build_${Mode}_$timestamp.log"

Write-Step "Project root: $root"
Write-Step "Flutter root: $flutterRoot"
Write-Step "Build mode: $Mode"
Write-Step "Log file: $logFile"

Push-Location $root
$depProfileState = $null
try {
  if ($RefreshDependencies -and $UseOhosDependencyProfile) {
    $depProfileState = Activate-OhosDependencyProfile -ProjectRoot $root
    if ($depProfileState.Activated) {
      Write-Step "Activated OHOS dependency profile: $($depProfileState.ProfilePubspec)"
    } else {
      Write-Step "OHOS dependency profile not found, using root pubspec."
    }
  }

  & flutter --version | Out-Host
  & node -v | Out-Host
  & npm -v | Out-Host
  if ($RefreshDependencies) {
    Write-Step "Refreshing dependencies with flutter pub get ..."
    $pubTmpOut = Join-Path $logsDir "tmp_pubget_stdout_$timestamp.log"
    $pubTmpErr = Join-Path $logsDir "tmp_pubget_stderr_$timestamp.log"
    $pub = Start-Process -FilePath "cmd.exe" `
      -ArgumentList "/c flutter pub get" `
      -NoNewWindow `
      -Wait `
      -PassThru `
      -RedirectStandardOutput $pubTmpOut `
      -RedirectStandardError $pubTmpErr
    if (Test-Path $pubTmpOut) { Get-Content $pubTmpOut | Tee-Object -FilePath $logFile -Append | Out-Host }
    if (Test-Path $pubTmpErr) { Get-Content $pubTmpErr | Tee-Object -FilePath $logFile -Append | Out-Host }
    Remove-Item -Force -ErrorAction SilentlyContinue $pubTmpOut, $pubTmpErr
    if ($pub.ExitCode -ne 0) {
      throw "flutter pub get failed."
    }
  }

  $buildArgs = "/c flutter build hap --$Mode"
  if ($UseNoPub) {
    $buildArgs += " --no-pub"
  }
  Write-Step "Running $buildArgs ..."
  $tmpOut = Join-Path $logsDir "tmp_stdout_$timestamp.log"
  $tmpErr = Join-Path $logsDir "tmp_stderr_$timestamp.log"
  $p = Start-Process -FilePath "cmd.exe" `
    -ArgumentList $buildArgs `
    -NoNewWindow `
    -Wait `
    -PassThru `
    -RedirectStandardOutput $tmpOut `
    -RedirectStandardError $tmpErr
  if (Test-Path $tmpOut) { Get-Content $tmpOut | Tee-Object -FilePath $logFile -Append | Out-Host }
  if (Test-Path $tmpErr) { Get-Content $tmpErr | Tee-Object -FilePath $logFile -Append | Out-Host }
  Remove-Item -Force -ErrorAction SilentlyContinue $tmpOut, $tmpErr
  $buildCode = $p.ExitCode
} finally {
  Restore-OhosDependencyProfile -State $depProfileState
  Pop-Location
}

if ($buildCode -ne 0) {
  Write-Step "Build failed with exit code $buildCode."
} else {
  Write-Step "Build finished successfully."
}

$sdkHvigorPath = Join-Path $flutterRoot $flutterHvigorRel
$health = [ordered]@{
  OhosRootExists = (Test-Path $ohosDir)
  OhosEntryPackageExists = (Test-Path (Join-Path $ohosDir "entry\oh-package.json5"))
  HvigorDependencyMapEntryExists = (Test-Path (Join-Path $ohosDir ".hvigor\dependencyMap\entry\oh-package.json5"))
  FlutterSdkHvigorExists = (Test-Path (Join-Path $sdkHvigorPath "index.ts"))
}

Write-Step "Health check:"
$health.GetEnumerator() | ForEach-Object {
  Write-Host ("  {0}: {1}" -f $_.Key, $_.Value)
}

if ($buildCode -ne 0) {
  if (-not $NoRestore) {
    Write-Step "Failure detected, restoring damaged paths..."
    Restore-TrackedPath -RepoRoot $root -TargetPath "ohos"
    if (-not $SkipSdkRestore) {
      Restore-TrackedPath -RepoRoot $flutterRoot -TargetPath $flutterHvigorRel
    }
  }
  exit $buildCode
}

# Even if build succeeds, fail fast when destructive side-effects are detected.
if (-not $health.OhosEntryPackageExists -or -not $health.FlutterSdkHvigorExists) {
  if (-not $NoRestore) {
    Write-Step "Destructive side-effects detected, restoring damaged paths..."
    Restore-TrackedPath -RepoRoot $root -TargetPath "ohos"
    if (-not $SkipSdkRestore) {
      Restore-TrackedPath -RepoRoot $flutterRoot -TargetPath $flutterHvigorRel
    }
  }
  throw "Build completed but detected destructive side-effects. Check $logFile"
}

Write-Step "Done."

param(
  [ValidateSet("debug", "release")]
  [string]$BuildMode = "debug",
  [string]$ExternalHarDir = "C:\Users\xy\danxi_har_cache",
  [switch]$AllowUnsignedOnSignFail = $true,
  [switch]$KeepWorkDir
)

$ErrorActionPreference = "Stop"

function Invoke-Step {
  param(
    [string]$Title,
    [scriptblock]$Action
  )
  Write-Host "==> $Title"
  & $Action
}

function Assert-RobocopySuccess {
  param([int]$Code)
  if ($Code -gt 7) {
    throw "robocopy failed with exit code $Code"
  }
}

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Resolve-Path (Join-Path $scriptDir "..")
$sourceOhosDir = Join-Path $repoRoot "ohos"
$workRoot = Join-Path $env:TEMP "danxi_hap_build"
$workOhosDir = Join-Path $workRoot "ohos"
$outputDir = Join-Path $repoRoot "har_output\hap\$BuildMode"
$BuildExitCode = 0

$flutterHar = Join-Path $ExternalHarDir "danxi_flutter.har"
$moduleHar = Join-Path $ExternalHarDir "danxi_flutter_module.har"
if (-not (Test-Path $flutterHar)) { throw "Missing external HAR: $flutterHar" }
if (-not (Test-Path $moduleHar)) { throw "Missing external HAR: $moduleHar" }

Invoke-Step "Prepare isolated workspace" {
  if (Test-Path $workRoot) {
    Remove-Item -Recurse -Force $workRoot
  }
  New-Item -ItemType Directory -Path $workRoot | Out-Null
}

Invoke-Step "Copy ohos project into isolated workspace" {
  robocopy $sourceOhosDir $workOhosDir /MIR /XD ".hvigor" "oh_modules" "entry\oh_modules" "entry\build" | Out-Host
  Assert-RobocopySuccess $LASTEXITCODE
}

Invoke-Step "Patch isolated project for SDK 22 and external HARs" {
  $buildProfile = Join-Path $workOhosDir "build-profile.json5"
  $bp = Get-Content -Path $buildProfile -Raw
  $bp = $bp -replace '"compatibleSdkVersion"\s*:\s*"[^"]+"', '"compatibleSdkVersion": "6.0.2(22)"'
  if ($bp -notmatch '"targetSdkVersion"\s*:') {
    $insert = '"compatibleSdkVersion": "6.0.2(22)",' + "`r`n        " + '"targetSdkVersion": "6.0.2(22)"'
    $bp = $bp -replace '"compatibleSdkVersion": "6.0.2\(22\)"', $insert
  } else {
    $bp = $bp -replace '"targetSdkVersion"\s*:\s*"[^"]+"', '"targetSdkVersion": "6.0.2(22)"'
  }
  Set-Content -Path $buildProfile -Value $bp -Encoding UTF8

  $rootPkgPath = Join-Path $workOhosDir "oh-package.json5"
  $rootPkg = Get-Content -Path $rootPkgPath -Raw
  if ($rootPkg -match '"overrides"\s*:') {
    $rootPkg = $rootPkg -replace '(?s)"overrides"\s*:\s*\{.*?\}', ('"overrides": {' +
      "`r`n    `"@ohos/flutter_ohos`": `"file:C:/Users/xy/danxi_har_cache/danxi_flutter.har`"," +
      "`r`n    `"@ohos/flutter_module`": `"file:C:/Users/xy/danxi_har_cache/danxi_flutter_module.har`"" +
      "`r`n  }")
  } else {
    $rootPkg = $rootPkg -replace '"dependencies"\s*:\s*\{\s*\}', ('"dependencies": {},' +
      "`r`n  `"overrides`": {" +
      "`r`n    `"@ohos/flutter_ohos`": `"file:C:/Users/xy/danxi_har_cache/danxi_flutter.har`"," +
      "`r`n    `"@ohos/flutter_module`": `"file:C:/Users/xy/danxi_har_cache/danxi_flutter_module.har`"" +
      "`r`n  }")
  }
  Set-Content -Path $rootPkgPath -Value $rootPkg -Encoding UTF8

  $entryPkgPath = Join-Path $workOhosDir "entry\oh-package.json5"
  $entryPkg = Get-Content -Path $entryPkgPath -Raw
  $entryPkg = $entryPkg -replace '(?s)"dependencies"\s*:\s*\{.*?\}', ('"dependencies": {' +
    "`r`n    `"@ohos/flutter_ohos`": `"`"," +
    "`r`n    `"@ohos/flutter_module`": `"`"" +
    "`r`n  }")
  Set-Content -Path $entryPkgPath -Value $entryPkg -Encoding UTF8

  $entryAbilityPath = Join-Path $workOhosDir "entry\src\main\ets\entryability\EntryAbility.ets"
  $entryAbility = Get-Content -Path $entryAbilityPath -Raw
  $entryAbility = $entryAbility -replace "import \{ GeneratedPluginRegistrant \} from '.*';", "import { GeneratedPluginRegistrant } from '@ohos/flutter_module';"
  Set-Content -Path $entryAbilityPath -Value $entryAbility -Encoding UTF8
}

Invoke-Step "Install ohpm dependencies in isolated workspace" {
  Push-Location $workOhosDir
  try {
    ohpm install | Out-Host
  }
  finally {
    Pop-Location
  }
}

Invoke-Step "Build HAP in isolated workspace ($BuildMode)" {
  Push-Location $workOhosDir
  try {
    hvigorw assembleHap -p product=default -p buildMode=$BuildMode --no-daemon | Out-Host
    $script:BuildExitCode = $LASTEXITCODE
  }
  finally {
    Pop-Location
  }
}

Invoke-Step "Collect HAP artifacts" {
  $haps = Get-ChildItem -Path $workOhosDir -Recurse -Filter *.hap -File
  if ($haps.Count -eq 0) {
    throw "No .hap artifact found under $workOhosDir"
  }
  New-Item -ItemType Directory -Force -Path $outputDir | Out-Null
  foreach ($hap in $haps) {
    Copy-Item -Path $hap.FullName -Destination (Join-Path $outputDir $hap.Name) -Force
  }
}

if ($BuildExitCode -ne 0) {
  if ($AllowUnsignedOnSignFail) {
    Write-Warning "hvigor exited with code $BuildExitCode. Unsigned HAP may be generated and already copied to: $outputDir"
  } else {
    throw "hvigor build failed with exit code $BuildExitCode"
  }
}

if (-not $KeepWorkDir) {
  Invoke-Step "Clean isolated workspace" {
    Remove-Item -Recurse -Force $workRoot
  }
}

Write-Host "Done. HAP files are available in: $outputDir"

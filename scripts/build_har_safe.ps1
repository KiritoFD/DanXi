param(
  [ValidateSet("debug", "release")]
  [string]$BuildMode = "debug",
  [string]$ArtifactPrefix = "",
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

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Resolve-Path (Join-Path $scriptDir "..")
$tempRoot = Join-Path $repoRoot ".tmp_har_build"
$backupDir = Join-Path $tempRoot "ohos_backup"
$moduleDir = Join-Path $tempRoot "module_build"
$outputDir = Join-Path $repoRoot "har_output\$BuildMode"
$ohosEntryHarDir = Join-Path $repoRoot "ohos\entry\har"

Invoke-Step "Prepare temp workspace" {
  if (Test-Path $tempRoot) {
    Remove-Item -Recurse -Force $tempRoot
  }
  New-Item -ItemType Directory -Path $tempRoot | Out-Null
}

Invoke-Step "Backup ohos directory" {
  Copy-Item -Path (Join-Path $repoRoot "ohos") -Destination $backupDir -Recurse -Force
}

Invoke-Step "Create temporary Flutter module" {
  flutter create --template=module $moduleDir | Out-Host
}

Invoke-Step "Sync project files into temporary module" {
  Copy-Item -Path (Join-Path $repoRoot "lib") -Destination (Join-Path $moduleDir "lib") -Recurse -Force

  if (Test-Path (Join-Path $repoRoot "assets")) {
    Copy-Item -Path (Join-Path $repoRoot "assets") -Destination (Join-Path $moduleDir "assets") -Recurse -Force
  }

  if (Test-Path (Join-Path $repoRoot "third_party")) {
    Copy-Item -Path (Join-Path $repoRoot "third_party") -Destination (Join-Path $moduleDir "third_party") -Recurse -Force
  }

  if (Test-Path (Join-Path $repoRoot "tooling")) {
    Copy-Item -Path (Join-Path $repoRoot "tooling") -Destination (Join-Path $moduleDir "tooling") -Recurse -Force
  }

  Copy-Item -Path (Join-Path $repoRoot "pubspec.yaml") -Destination (Join-Path $moduleDir "pubspec.yaml") -Force
  if (Test-Path (Join-Path $repoRoot "pubspec.lock")) {
    Copy-Item -Path (Join-Path $repoRoot "pubspec.lock") -Destination (Join-Path $moduleDir "pubspec.lock") -Force
  }

  if (Test-Path (Join-Path $repoRoot "pubspec_overrides.yaml")) {
    Copy-Item -Path (Join-Path $repoRoot "pubspec_overrides.yaml") -Destination (Join-Path $moduleDir "pubspec_overrides.yaml") -Force
  }

  $pubspecPath = Join-Path $moduleDir "pubspec.yaml"
  $pubspecContent = Get-Content -Path $pubspecPath -Raw
  if ($pubspecContent -notmatch "(?ms)^\s*flutter:\s*\r?\n\s*module:") {
    $pubspecContent = $pubspecContent -replace "(?m)^flutter:\s*$", @"
flutter:
  module:
    androidPackage: com.example.module_build
    iosBundleIdentifier: com.example.modulebuild
"@
    Set-Content -Path $pubspecPath -Value $pubspecContent -Encoding UTF8
  }
}

Push-Location $moduleDir
try {
  Invoke-Step "Run flutter pub get" {
    flutter pub get --enforce-lockfile | Out-Host
  }

  Invoke-Step "Install ohpm deps for .ohos" {
    Push-Location (Join-Path $moduleDir ".ohos")
    try {
      ohpm install | Out-Host
    }
    finally {
      Pop-Location
    }
  }

  Invoke-Step "Build HAR ($BuildMode)" {
    flutter build har --$BuildMode --no-pub | Out-Host
  }
}
finally {
  Pop-Location
}

Invoke-Step "Collect HAR artifacts" {
  $harCandidates = @(
    (Join-Path $moduleDir "build\ohos\har\$BuildMode"),
    (Join-Path $moduleDir ".ohos\har")
  )
  $harFiles = @()
  foreach ($candidate in $harCandidates) {
    if (Test-Path $candidate) {
      $harFiles += Get-ChildItem -Path $candidate -Filter *.har -File -ErrorAction SilentlyContinue
    }
  }
  if ($harFiles.Count -eq 0) {
    $harFiles = Get-ChildItem -Path $moduleDir -Recurse -Filter *.har -File -ErrorAction SilentlyContinue
  }
  if ($harFiles.Count -eq 0) {
    throw "HAR artifacts not found under: $moduleDir"
  }

  New-Item -ItemType Directory -Force -Path $outputDir | Out-Null
  New-Item -ItemType Directory -Force -Path $ohosEntryHarDir | Out-Null

  foreach ($har in $harFiles) {
    $targetName = if ([string]::IsNullOrWhiteSpace($ArtifactPrefix)) { $har.Name } else { "$ArtifactPrefix$($har.Name)" }
    Copy-Item -Path $har.FullName -Destination (Join-Path $outputDir $targetName) -Force
    Copy-Item -Path $har.FullName -Destination (Join-Path $ohosEntryHarDir $targetName) -Force
  }
}

if (-not $KeepWorkDir) {
  Invoke-Step "Clean temporary workspace" {
    Remove-Item -Recurse -Force $tempRoot
  }
}

Write-Host "Done. HAR files are available in: $outputDir"

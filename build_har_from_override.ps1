param(
  [ValidateSet("debug", "release")]
  [string]$BuildMode = "debug",
  [switch]$KeepTemp
)

$ErrorActionPreference = "Stop"

$repoRoot = $PSScriptRoot
$overrideOhosPath = Join-Path $repoRoot "pubspec_overrides.ohos.yaml"
$rootPubspecPath = Join-Path $repoRoot "pubspec.yaml"
$tempModuleDir = Join-Path $repoRoot ".tmp_har_module"
$harOutputDir = Join-Path $repoRoot "har"
$pluginHarDir = Join-Path $harOutputDir "plugins"
$engineHarDst = Join-Path $harOutputDir "danxi_flutter.har"
$moduleHarDst = Join-Path $harOutputDir "danxi_flutter_module.har"

Push-Location $repoRoot
try {
  if (-not (Test-Path $overrideOhosPath)) {
    throw "Missing file: $overrideOhosPath"
  }
  if (-not (Test-Path $rootPubspecPath)) {
    throw "Missing file: $rootPubspecPath"
  }

  if (Test-Path $tempModuleDir) {
    Remove-Item -Recurse -Force $tempModuleDir
  }

  flutter create --template=module --project-name dan_xi --no-pub $tempModuleDir
  if ($LASTEXITCODE -ne 0) {
    throw "flutter create failed with exit code $LASTEXITCODE."
  }

  $pubspec = Get-Content -Raw $rootPubspecPath
  $patched = [regex]::Replace($pubspec, 'sdk:\s*"[^\"]+"', 'sdk: ">=3.4.0 <4.0.0"')

  $patched = [regex]::Replace(
    $patched,
    '(?ms)^\s{2}# fixme: This fixes #645\..*?^\s{2}flutter_inappwebview_linux:\s*\r?\n^\s{4}git:\s*\r?\n^\s{6}url:.*\r?\n^\s{6}ref:.*\r?\n^\s{6}path: flutter_inappwebview_linux\s*\r?\n',
    ''
  )

  $patched = [regex]::Replace(
    $patched,
    '(?ms)^dev_dependencies:\s*\r?\n.*?(?=^[a-zA-Z_][a-zA-Z0-9_]*:\s*\r?\n)',
    ''
  )

  if ($patched -notmatch '(?m)^\s+module:\s*$') {
    $patched = [regex]::Replace(
      $patched,
      '(?m)^flutter:\s*$',
      "flutter:`r`n  module:`r`n    androidPackage: io.github.danxi`r`n    iosBundleIdentifier: io.github.danxi",
      1
    )
  }

  Set-Content -Path (Join-Path $tempModuleDir "pubspec.yaml") -Value $patched -NoNewline
  Copy-Item $overrideOhosPath (Join-Path $tempModuleDir "pubspec_overrides.yaml") -Force

  Copy-Item (Join-Path $repoRoot "lib") (Join-Path $tempModuleDir "lib") -Recurse -Force
  if (Test-Path (Join-Path $repoRoot "assets")) {
    Copy-Item (Join-Path $repoRoot "assets") (Join-Path $tempModuleDir "assets") -Recurse -Force
  }

  Push-Location $tempModuleDir
  flutter pub get
  if ($LASTEXITCODE -ne 0) {
    throw "flutter pub get failed with exit code $LASTEXITCODE."
  }

  flutter build har "--$BuildMode"
  if ($LASTEXITCODE -ne 0) {
    throw "flutter build har failed with exit code $LASTEXITCODE."
  }
  Pop-Location

  $engineHarSrc = Get-ChildItem -Path $tempModuleDir -Filter "flutter.har" -File -Recurse |
    Sort-Object LastWriteTime -Descending |
    Select-Object -First 1 -ExpandProperty FullName
  $moduleHarSrc = Get-ChildItem -Path $tempModuleDir -Filter "flutter_module.har" -File -Recurse |
    Sort-Object LastWriteTime -Descending |
    Select-Object -First 1 -ExpandProperty FullName

  if (-not $engineHarSrc -or -not $moduleHarSrc) {
    throw "HAR outputs not found under temp module."
  }

  New-Item -ItemType Directory -Path $harOutputDir -Force | Out-Null
  New-Item -ItemType Directory -Path $pluginHarDir -Force | Out-Null
  Copy-Item $engineHarSrc $engineHarDst -Force
  Copy-Item $moduleHarSrc $moduleHarDst -Force

  $pluginHarFiles = Get-ChildItem -Path $tempModuleDir -Filter "*.har" -File -Recurse |
    Where-Object { $_.FullName -ne $engineHarSrc -and $_.FullName -ne $moduleHarSrc } |
    Sort-Object Name -Unique
  foreach ($pluginHar in $pluginHarFiles) {
    Copy-Item $pluginHar.FullName (Join-Path $pluginHarDir $pluginHar.Name) -Force
  }

  Write-Host "HAR build succeeded:"
  Write-Host "  $engineHarDst"
  Write-Host "  $moduleHarDst"
  if ($pluginHarFiles.Count -gt 0) {
    Write-Host "Plugin HARs:"
    foreach ($pluginHar in $pluginHarFiles) {
      $p = Join-Path $pluginHarDir $pluginHar.Name
      Write-Host "  $p"
    }
    Write-Host "Suggested Harmony overrides entries:"
    foreach ($pluginHar in $pluginHarFiles) {
      $name = [System.IO.Path]::GetFileNameWithoutExtension($pluginHar.Name)
      Write-Host "    `"$name`": `"file:../har/plugins/$($pluginHar.Name)`","
    }
  }
}
finally {
  if ((Get-Location).Path -eq $tempModuleDir) {
    Pop-Location
  }
  if (-not $KeepTemp -and (Test-Path $tempModuleDir)) {
    Remove-Item -Recurse -Force $tempModuleDir
  }
  Pop-Location
}

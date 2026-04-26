param(
  [ValidateSet("debug", "release")]
  [string]$BuildMode = "debug"
)

$ErrorActionPreference = "Stop"

$repoRoot = $PSScriptRoot
$overrideOhosPath = Join-Path $repoRoot "pubspec_overrides.ohos.yaml"
$rootPubspecPath = Join-Path $repoRoot "pubspec.yaml"
$activeOverridePath = Join-Path $repoRoot "pubspec_overrides.yaml"
$ohosBuildProfileCandidates = @(
  (Join-Path $repoRoot ".ohos\build-profile.json5")
)
$ohosPackageCandidates = @(
  (Join-Path $repoRoot ".ohos\oh-package.json5")
)
$harOutputDir = Join-Path $repoRoot "har"
$pluginHarDir = Join-Path $harOutputDir "plugins"
$engineHarDst = Join-Path $harOutputDir "danxi_flutter.har"
$moduleHarDst = Join-Path $harOutputDir "danxi_flutter_module.har"

$fileBackups = @{}
$createdFiles = New-Object System.Collections.Generic.List[string]

function Backup-File {
  param([string]$Path)
  if (-not (Test-Path $Path)) { return }
  $full = [System.IO.Path]::GetFullPath($Path)
  if (-not $fileBackups.ContainsKey($full)) {
    $fileBackups[$full] = Get-Content -Raw -Path $full
  }
}

function Write-File {
  param(
    [string]$Path,
    [string]$Content
  )
  if (-not (Test-Path $Path)) {
    $createdFiles.Add([System.IO.Path]::GetFullPath($Path))
  } else {
    Backup-File $Path
  }
  Set-Content -Path $Path -Value $Content -NoNewline -Encoding utf8
}

Push-Location $repoRoot
try {
  if (-not (Test-Path $overrideOhosPath)) { throw "Missing file: $overrideOhosPath" }
  if (-not (Test-Path $rootPubspecPath)) { throw "Missing file: $rootPubspecPath" }
  $pubspec = Get-Content -Raw $rootPubspecPath
  Backup-File $rootPubspecPath

  # Keep sdk constraint compatible with Flutter 3.32.x.
  if ($pubspec -match 'sdk:\s*"[^"]+"') {
    $pubspec = [regex]::Replace($pubspec, 'sdk:\s*"[^"]+"', 'sdk: ">=3.8.0 <4.0.0"', 1)
  }

  # Keep OHOS build lane isolated from desktop/mobile lint/test toolchains.
  $pubspec = [regex]::Replace($pubspec, '(?m)^\s*pubspec_generator:\s*.*\r?\n', '')
  $pubspec = [regex]::Replace($pubspec, '(?ms)^\s*flutter_test:\s*\r?\n\s*sdk:\s*flutter\s*\r?\n', '')
  $pubspec = [regex]::Replace($pubspec, '(?m)^\s*flutter_lints:\s*.*\r?\n', '')
  $pubspec = [regex]::Replace($pubspec, '(?m)^\s*custom_lint:\s*.*\r?\n', '')
  $pubspec = [regex]::Replace($pubspec, '(?m)^\s*riverpod_lint:\s*.*\r?\n', '')

  # `flutter build har` requires module metadata.
  if ($pubspec -notmatch '(?m)^\s+module:\s*$') {
    $pubspec = [regex]::Replace(
      $pubspec,
      '(?m)^flutter:\s*$',
      "flutter:`r`n  module:`r`n    androidPackage: io.github.danxi`r`n    iosBundleIdentifier: io.github.danxi",
      1
    )
  }
  Write-File -Path $rootPubspecPath -Content $pubspec

  $overrideContent = Get-Content -Raw $overrideOhosPath
  # Normalize local vendor paths for root-level build.
  $overrideContent = [regex]::Replace(
    $overrideContent,
    '(?m)^(\s*path:\s*)\.\./(\.vendor_ohos/.*)$',
    '$1./$2'
  )
  Write-File -Path $activeOverridePath -Content $overrideContent

  $ohosBuildProfilePath = $ohosBuildProfileCandidates | Where-Object { Test-Path $_ } | Select-Object -First 1
  if ($ohosBuildProfilePath) {
    $profile = Get-Content -Raw $ohosBuildProfilePath
    if ($profile -notmatch '"name"\s*:\s*"flutter_module"') {
      Backup-File $ohosBuildProfilePath
    $flutterModuleItem = @"
,
    {
      "name": "flutter_module",
      "srcPath": "../.ohos/flutter_module",
      "targets": [
        {
          "name": "default",
          "applyToProducts": [
            "default"
          ]
        }
      ]
    }
"@
      $profile = [regex]::Replace(
        $profile,
        '(?s)("modules"\s*:\s*\[)(.*?)(\n\s*\]\s*\n\})',
        { param($m) $m.Groups[1].Value + $m.Groups[2].Value + $flutterModuleItem + $m.Groups[3].Value },
        1
      )
      Write-File -Path $ohosBuildProfilePath -Content $profile
    }
  }

  $flutterCmd = Get-Command flutter -ErrorAction Stop
  $flutterBinDir = Split-Path -Parent $flutterCmd.Source
  $flutterRoot = Split-Path -Parent $flutterBinDir
  $arm64NativeHar = Join-Path $flutterRoot "bin\cache\artifacts\engine\ohos-arm64\arm64_v8a_${BuildMode}.har"
  $x64NativeHar = Join-Path $flutterRoot "bin\cache\artifacts\engine\ohos-x64\x86_64_${BuildMode}.har"
  if (-not (Test-Path $arm64NativeHar)) { throw "Missing native runtime HAR: $arm64NativeHar" }
  if (-not (Test-Path $x64NativeHar)) { throw "Missing native runtime HAR: $x64NativeHar" }

  flutter pub get
  if ($LASTEXITCODE -ne 0) { throw "flutter pub get failed with exit code $LASTEXITCODE." }

  $ohosPackagePath = $ohosPackageCandidates | Where-Object { Test-Path $_ } | Select-Object -First 1
  if ($ohosPackagePath) {
    $ohosPackage = Get-Content -Raw $ohosPackagePath
    $patchedPackage = $ohosPackage
    if ($patchedPackage -notmatch '"overrides"\s*:\s*\{') {
      $patchedPackage = [regex]::Replace(
        $patchedPackage,
        '(?s)\}\s*$',
        ",`r`n  `"overrides`": {`r`n  }`r`n}"
      )
    }
    if ($patchedPackage -notmatch '"flutter_native_arm64_v8a"\s*:') {
      $patchedPackage = [regex]::Replace(
        $patchedPackage,
        '(?s)("overrides"\s*:\s*\{)',
        "`$1`r`n    `"flutter_native_arm64_v8a`": `"file:$($arm64NativeHar -replace '\\','/')`",`r`n    `"flutter_native_x86_64`": `"file:$($x64NativeHar -replace '\\','/')`","
      )
    }
    if ($patchedPackage -ne $ohosPackage) {
      Write-File -Path $ohosPackagePath -Content $patchedPackage
    }
  }

  flutter build har "--$BuildMode"
  $flutterBuildExit = $LASTEXITCODE

  $harSearchRoots = @(
    (Join-Path $repoRoot ".ohos")
  ) | Where-Object { Test-Path $_ }

  $engineHarSrc = $null
  $moduleHarSrc = $null
  foreach ($root in $harSearchRoots) {
    if (-not $engineHarSrc) {
      $engineHarSrc = Get-ChildItem -Path $root -Filter "flutter.har" -File -Recurse -ErrorAction SilentlyContinue |
        Sort-Object LastWriteTime -Descending |
        Select-Object -First 1 -ExpandProperty FullName
    }
    if (-not $moduleHarSrc) {
      $moduleHarSrc = Get-ChildItem -Path $root -Filter "flutter_module.har" -File -Recurse -ErrorAction SilentlyContinue |
        Sort-Object LastWriteTime -Descending |
        Select-Object -First 1 -ExpandProperty FullName
    }
  }

  if (-not $moduleHarSrc) {
    throw "flutter build har failed with exit code $flutterBuildExit and module HAR not found under .ohos."
  }

  if ($flutterBuildExit -ne 0) {
    Write-Host "flutter build har exited with code $flutterBuildExit, but module HAR was generated. Continuing." -ForegroundColor Yellow
  }

  if (-not $engineHarSrc) {
    Write-Host "flutter.har not found under .ohos. This Flutter toolchain may publish engine/runtime as dependencies instead of a standalone engine HAR." -ForegroundColor Yellow
  }

  if (-not $engineHarSrc -and -not $moduleHarSrc) {
    throw "HAR outputs not found under .ohos."
  }

  New-Item -ItemType Directory -Path $harOutputDir -Force | Out-Null
  New-Item -ItemType Directory -Path $pluginHarDir -Force | Out-Null
  if ($engineHarSrc) {
    Copy-Item $engineHarSrc $engineHarDst -Force
  }
  Copy-Item $moduleHarSrc $moduleHarDst -Force

  $pluginHarFiles = $harSearchRoots | ForEach-Object {
      Get-ChildItem -Path $_ -Filter "*.har" -File -Recurse -ErrorAction SilentlyContinue
    } |
    Where-Object { $_.FullName -ne $engineHarSrc -and $_.FullName -ne $moduleHarSrc } |
    Sort-Object Name -Unique

  foreach ($pluginHar in $pluginHarFiles) {
    Copy-Item $pluginHar.FullName (Join-Path $pluginHarDir $pluginHar.Name) -Force
  }

  Write-Host "HAR build succeeded:"
  if ($engineHarSrc) {
    Write-Host "  $engineHarDst"
  }
  Write-Host "  $moduleHarDst"
}
finally {
  foreach ($fullPath in $fileBackups.Keys) {
    Set-Content -Path $fullPath -Value $fileBackups[$fullPath] -NoNewline -Encoding utf8
  }

  foreach ($created in $createdFiles) {
    if (Test-Path $created) {
      Remove-Item $created -Force
    }
  }

  Pop-Location
}

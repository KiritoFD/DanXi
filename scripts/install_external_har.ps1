param(
  [Parameter(Mandatory = $true)]
  [string]$HarDir
)

$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Resolve-Path (Join-Path $scriptDir "..")
$ohosDir = Join-Path $repoRoot "ohos"
$targetHarDir = Join-Path $ohosDir "har"

$sourceFlutterHar = Join-Path $HarDir "danxi_flutter.har"
$sourceModuleHar = Join-Path $HarDir "danxi_flutter_module.har"

if (-not (Test-Path $sourceFlutterHar)) {
  throw "Missing file: $sourceFlutterHar"
}
if (-not (Test-Path $sourceModuleHar)) {
  throw "Missing file: $sourceModuleHar"
}

New-Item -ItemType Directory -Force -Path $targetHarDir | Out-Null
Copy-Item -Path $sourceFlutterHar -Destination (Join-Path $targetHarDir "danxi_flutter.har") -Force
Copy-Item -Path $sourceModuleHar -Destination (Join-Path $targetHarDir "danxi_flutter_module.har") -Force

Push-Location $ohosDir
try {
  ohpm install | Out-Host
}
finally {
  Pop-Location
}

Write-Host "Done. Installed external HARs from: $HarDir"

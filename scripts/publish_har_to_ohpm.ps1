param(
  [Parameter(Mandatory = $true)]
  [string]$PublishId,

  [Parameter(Mandatory = $true)]
  [string]$KeyPath,

  [string]$Registry = "https://ohpm.openharmony.cn/ohpm/",
  [string]$Tag = "latest"
)

$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Resolve-Path (Join-Path $scriptDir "..")
$ohosDir = Join-Path $repoRoot "ohos"
$harFiles = @(
  (Join-Path $ohosDir "entry\har\danxi_flutter.har"),
  (Join-Path $ohosDir "entry\har\danxi_flutter_module.har")
)

foreach ($har in $harFiles) {
  if (-not (Test-Path $har)) {
    throw "HAR file not found: $har"
  }
}

Push-Location $ohosDir
try {
  foreach ($har in $harFiles) {
    Write-Host "==> Publishing $har"
    ohpm publish $har --publish_registry $Registry --publish_id $PublishId --key_path $KeyPath --tag $Tag | Out-Host
  }
}
finally {
  Pop-Location
}

Write-Host "Done. Published all HAR files."

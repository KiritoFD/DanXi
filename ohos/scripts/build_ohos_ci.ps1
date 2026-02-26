param(
  [ValidateSet("debug", "release", "profile")]
  [string]$Mode = "debug",
  [int]$MaxAttempts = 3,
  [int]$RetryDelaySeconds = 2,
  [switch]$RefreshDependencies,
  [switch]$UseOhosDependencyProfile,
  [switch]$UseNoPub = $true,
  [switch]$SkipFallbackLoop
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Step {
  param([string]$Message)
  Write-Host "[ohos-ci] $Message"
}

$scriptRoot = $PSScriptRoot
$safeScript = Join-Path $scriptRoot "build_ohos_safe.ps1"
$loopScript = Join-Path $scriptRoot "build_ohos_loop.ps1"

if (-not (Test-Path $safeScript)) {
  throw "Missing script: $safeScript"
}
if (-not (Test-Path $loopScript)) {
  throw "Missing script: $loopScript"
}

$commonParams = @{
  Mode = $Mode
  UseNoPub = $UseNoPub
}

if ($RefreshDependencies) {
  $commonParams.RefreshDependencies = $true
}
if ($UseOhosDependencyProfile) {
  $commonParams.UseOhosDependencyProfile = $true
}

Write-Step "Stage 1/2: safe build"
& $safeScript @commonParams
$safeExit = $LASTEXITCODE
if ($safeExit -eq 0) {
  Write-Step "Safe build succeeded."
  exit 0
}

Write-Step "Safe build failed with exit code $safeExit."
if ($SkipFallbackLoop) {
  Write-Step "Fallback loop disabled."
  exit $safeExit
}

Write-Step "Stage 2/2: retry loop build"
$loopParams = @{
  Mode = $Mode
  MaxAttempts = $MaxAttempts
  RetryDelaySeconds = $RetryDelaySeconds
  UseNoPub = $UseNoPub
}
if ($RefreshDependencies) {
  $loopParams.RefreshDependencies = $true
}
if ($UseOhosDependencyProfile) {
  $loopParams.UseOhosDependencyProfile = $true
}

& $loopScript @loopParams
exit $LASTEXITCODE

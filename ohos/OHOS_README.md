# OHOS Build Guide

This folder contains OHOS-specific build scripts and baseline files to reduce merge impact on non-OHOS code.

## 1. Prerequisites

- Windows PowerShell
- DevEco Studio (for Node/Hvigor and OHOS SDK)
- Flutter SDK for OHOS (`flutter build har/hap` must be available)
- Git in PATH

## 2. Script Location

- Unified CI/local entry: `ohos/scripts/build_ohos_ci.ps1`
- Safe single build: `ohos/scripts/build_ohos_safe.ps1`
- Retry loop pipeline: `ohos/scripts/build_ohos_loop.ps1`

All scripts are moved from root `scripts/` to `ohos/scripts/` and now resolve project root from script location.

## 3. Typical Usage

Run from repository root:

```powershell
.\ohos\scripts\build_ohos_ci.ps1 -Mode debug
```

Behavior of CI entry script:

- Stage 1: run `build_ohos_safe.ps1`
- Stage 2: if stage 1 fails, run `build_ohos_loop.ps1` with retries

Optional flags:

- `-ProjectRoot <path>`: explicit repo root
- `-Mode debug|release|profile`
- `-RefreshDependencies`: run `flutter pub get` before build
- `-UseOhosDependencyProfile`: only effective with `-RefreshDependencies`; temporarily uses `ohos/dependency_snapshots/pubspec.ohos.yaml`
- `-UseNoPub:$false`: disable `--no-pub` if you need full dependency resolution
- `build_ohos_ci.ps1`:
  - `-MaxAttempts <n>`: retry limit for fallback loop stage
  - `-RetryDelaySeconds <n>`
  - `-SkipFallbackLoop`: fail fast if safe build fails
- `build_ohos_loop.ps1`:
  - `-MaxAttempts <n>`
  - `-RetryDelaySeconds <n>`
  - `-RecloneFlutterSdk`
  - `-FlutterSdkPath <path>`

## 4. Outputs

- Safe build logs: `dist/build_logs/`
- Loop pipeline logs/artifacts: `dist/official_pipeline/`
- HAP output (common): `build/ohos/hap/entry-default-signed.hap`

## 5. Conflict-Prone Files

When upstream merges cause dependency/version conflicts, compare with snapshots in:

- `ohos/dependency_snapshots/pubspec.yaml`
- `ohos/dependency_snapshots/pubspec.lock`
- `ohos/dependency_snapshots/pubspec.ohos.yaml` (OHOS-only dependency profile)

These snapshots are copies of repo-root dependency files at the time OHOS scripts were organized.

## 6. OHOS-only Dependency Profile

OHOS dependency profile is opt-in:

- `-RefreshDependencies -UseOhosDependencyProfile`: temporarily replace root `pubspec.yaml` with `pubspec.ohos.yaml` during dependency refresh.
- Without `-RefreshDependencies`, scripts do not touch root `pubspec.yaml`.

Scripts restore root `pubspec.yaml/lock` after build.

# OHOS Build Guide

This folder contains OHOS-specific build scripts and baseline files to reduce merge impact on non-OHOS code.

## 1. Prerequisites

- Windows PowerShell
- DevEco Studio (for Node/Hvigor and OHOS SDK)
- Flutter SDK for OHOS (`flutter build har/hap` must be available)
- Git in PATH

## 2. Script Location

- Safe single build: `ohos/scripts/build_ohos_safe.ps1`
- Retry loop pipeline: `ohos/scripts/build_ohos_loop.ps1`

Both scripts are moved from root `scripts/` to `ohos/scripts/` and now resolve project root from script location.

## 3. Typical Usage

Run from repository root:

```powershell
.\ohos\scripts\build_ohos_safe.ps1 -Mode debug
.\ohos\scripts\build_ohos_loop.ps1 -Mode debug -MaxAttempts 3
```

Optional flags:

- `-ProjectRoot <path>`: explicit repo root
- `-Mode debug|release|profile`
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

Both scripts enable OHOS dependency profile by default:

- `-UseOhosDependencyProfile:$true` (default): temporarily replace root `pubspec.yaml/lock` with `pubspec.ohos.*` for build.
- `-UseOhosDependencyProfile:$true` (default): temporarily replace root `pubspec.yaml` with `pubspec.ohos.yaml` for build.
- `-UseOhosDependencyProfile:$false`: use root dependencies directly.

Scripts restore root `pubspec.yaml/lock` after build.

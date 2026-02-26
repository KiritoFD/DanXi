# Must-Change Notes (OHOS PR Scope)

This PR intentionally keeps non-OHOS code aligned with upstream and only keeps OHOS-specific necessary changes.

## What is intentionally changed

1. `ohos/scripts/build_ohos_safe.ps1`
- Moved from root `scripts/` to `ohos/scripts/`.
- Updated project-root detection so the script works from `ohos/scripts/`.

2. `ohos/scripts/build_ohos_loop.ps1`
- Moved from root `scripts/` to `ohos/scripts/`.
- Updated project-root detection so the script works from `ohos/scripts/`.

3. `ohos/OHOS_README.md`
- Added OHOS build instructions and usage examples.

4. `ohos/dependency_snapshots/pubspec.yaml`
5. `ohos/dependency_snapshots/pubspec.lock`
- Added dependency snapshots to help resolve OHOS dependency/version conflicts during merges.

6. `ohos/dependency_snapshots/pubspec.ohos.yaml`
- Added OHOS-only dependency profile.
- Current profile sets Dart SDK constraint to `>=3.6.2 <4.0.0` for OHOS toolchain compatibility.

7. `ohos/scripts/build_ohos_safe.ps1` and `ohos/scripts/build_ohos_loop.ps1`
- Added automatic OHOS dependency-profile switch (`-UseOhosDependencyProfile`, default enabled).
- Scripts now swap in `pubspec.ohos.*` before build and restore root `pubspec.*` afterward.

8. `.gitignore`
- Added ignore rules for OHOS build/cache/temp artifacts and local temp outputs to keep PR clean.

## What is intentionally NOT changed

- CI workflows under `.github/workflows/`
- Android/iOS/Linux/macOS/Windows/Web non-OHOS platform files
- Non-OHOS logic changes (including `PlatformX`-related changes in `lib/`)

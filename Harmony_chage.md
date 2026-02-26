# Harmony Adaptation Change Log

Date: 2026-02-26

## Out-of-ohos modifications (reported as requested)

1. Added `pubspec_overrides.yaml` at repo root to minimally unblock dependency resolution on Dart 3.9.2:
   - `app_links: ^6.3.3`
   - `linkify: ^5.0.0`
   - `riverpod_lint` -> local path stub
   - `custom_lint` -> local path stub
   - `riverpod_generator` -> local path stub
   - `pubspec_generator` -> local path stub (version 4.3.0)

2. Added local stub packages under `tooling/` (dev-tool only, no runtime logic):
   - `tooling/riverpod_lint_stub/pubspec.yaml`
   - `tooling/riverpod_lint_stub/riverpod_lint.dart`
   - `tooling/custom_lint_stub/pubspec.yaml`
   - `tooling/custom_lint_stub/custom_lint.dart`
   - `tooling/riverpod_generator_stub/pubspec.yaml`
   - `tooling/riverpod_generator_stub/riverpod_generator.dart`
   - `tooling/pubspec_generator_stub/pubspec.yaml`
   - `tooling/pubspec_generator_stub/pubspec_generator.dart`

3. Executed and verified:
   - `flutter pub get` => success

4. Current blocker:
   - `flutter build har --debug` still fails with: `current project is not module or has not pub get`
   - Root cause: this Flutter project is not created as `--template=module`.

5. Auto-generated side effects from `flutter pub get` (non-ohos):
   - `linux/flutter/generated_plugin_registrant.cc`
   - `linux/flutter/generated_plugin_registrant.h`
   - `linux/flutter/generated_plugins.cmake`
   - `macos/Flutter/GeneratedPluginRegistrant.swift`
   - `windows/flutter/generated_plugin_registrant.cc`
   - `windows/flutter/generated_plugin_registrant.h`
   - `windows/flutter/generated_plugins.cmake`
   - `pubspec.lock`

## Incident Tracking: why `ohos` was "emptied"

Date: 2026-02-26

### Recovery performed

Executed:

1. `git restore --source=HEAD --worktree --staged -- ohos`
2. `git clean -fd ohos`

After recovery, `ohos` contains expected baseline files again (e.g. `AppScope/`, `build-profile.json5`, `entry/oh-package.json5`, `hvigorfile.ts`).

### Observed destructive pattern

When the issue happens, tracked files under `ohos` are deleted in bulk, and directory often degenerates to only generated-like content (commonly `entry/` + `oh_modules/`).

This deletion pattern matches mirror-sync semantics (`robocopy /MIR` or equivalent) when a reduced source tree is mirrored into `ohos`:

1. destination-only files are removed;
2. only files existing in source are kept.

High-confidence likely trigger chain:

1. build/generated tree (`.ohos`-like reduced layout) is used as mirror source;
2. mirror target is project `ohos`;
3. `/MIR`-style sync removes non-generated shell files from `ohos`.

Note: this is a mechanism-level root cause; exact one-off command in terminal history is not fully recoverable.

### Why this is not a normal hvigor behavior

Direct `hvigor assembleHap` should not normally delete tracked shell files like:

- `ohos/entry/oh-package.json5`
- `ohos/build-profile.json5`
- `ohos/AppScope/*`

If these disappear, it indicates an external sync/cleanup step touched the source tree before/after build.

### Mitigation (mandatory)

1. Never mirror generated tree into source `ohos` with `/MIR`.
2. Build only in isolated temp workspace (`scripts/build_hap_isolated.ps1`), source `ohos` read-only by process convention.
3. Keep HAR files outside repo `ohos` and inject via isolated overrides.
4. If `ohos` appears truncated, recover immediately with:
   - `git restore --source=HEAD --worktree --staged -- ohos`
   - `git clean -fd ohos`

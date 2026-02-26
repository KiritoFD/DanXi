# Harmony Adaptation Change Log

Date: 2026-02-26

## External HAR relocation

To avoid accidental cleanup impact inside `ohos`, HAR files are placed outside `ohos`:

1. Added:
   - `assets/har/danxi_flutter.har`
   - `assets/har/danxi_flutter_module.har`
2. Updated `ohos/oh-package.json5` overrides:
   - `@ohos/flutter_ohos` -> `file:../assets/har/danxi_flutter.har`
   - `@ohos/flutter_module` -> `file:../assets/har/danxi_flutter_module.har`
3. Verified dependency install:
   - Ran `ohpm install` in `ohos` successfully.

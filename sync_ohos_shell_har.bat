@echo off
setlocal

set "SRC=%~dp0ohos_module_build\build\ohos\har\debug"
set "DST=%~dp0ohos_shell\har"

if not exist "%SRC%\flutter_module.har" (
  echo Missing HAR output in:
  echo   %SRC%
  echo Run build_har_ohos.bat first.
  exit /b 1
)

if not exist "%DST%" mkdir "%DST%"

copy /Y "%SRC%\flutter_embedding_debug.har" "%DST%\" >nul
copy /Y "%SRC%\arm64_v8a_debug.har" "%DST%\" >nul
copy /Y "%SRC%\flutter_module.har" "%DST%\" >nul

echo Synced HAR files to:
echo   %DST%

endlocal

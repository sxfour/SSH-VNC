@echo off
chcp 65001

start /min "SSH" "Путь до ярлыка с запуском туннеля с готовой сессией"
start "VNC" "Путь до vnc конфига "

Color 0B
Set "MyProcess=tvnviewer.exe"
Set "MyProcessToKill=putty.exe"
    
:MainLoop

cls
for /F "tokens=1" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
Tasklist /NH /FI "imagename eq %MyProcess%" 2>nul |find /i "%MyProcess%" >nul

If not errorlevel 1 (echo [PROC] [%mytime%] Соединение "%MyProcessToKill%" через SSH  c "%MyProcess%" процессы активны... && echo [INFO] [%mytime%] Для выхода закройте окно с таблицей.) else (taskkill -F -IM %MyProcessToKill% && goto end)

Timeout /T 1 /NoBreak>nul

Goto :MainLoop
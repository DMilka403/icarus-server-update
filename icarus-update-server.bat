@echo off
setlocal
title Icarus Server - Update & Production

REM === CONFIGURATION ===
set STEAMCMD_DIR=C:\SteamCMD
set SERVER_DIR=C:\icarusserver
set SERVER_EXE=IcarusServer-Win64-Shipping.exe
set START_BAT=start.bat
set LOG_FILE=%SERVER_DIR%\log_update.txt

echo ============================== >> "%LOG_FILE%"
echo [%date% %time%] Starting update script >> "%LOG_FILE%"
echo ============================== >> "%LOG_FILE%"

REM === STOP SERVER BEFORE UPDATE (if running) ===
echo [%date% %time%] Stopping server before update >> "%LOG_FILE%"
taskkill /IM %SERVER_EXE% /F >> "%LOG_FILE%" 2>&1

timeout /t 5 >nul

REM === UPDATE SERVER VIA STEAMCMD ===
echo [%date% %time%] Updating server via SteamCMD >> "%LOG_FILE%"
cd /d %STEAMCMD_DIR%
steamcmd.exe +force_install_dir "%SERVER_DIR%" +login anonymous +app_update 2089300 validate +quit >> "%LOG_FILE%" 2>&1

REM === START SERVER AFTER UPDATE ===
echo [%date% %time%] Starting server >> "%LOG_FILE%"
cd /d %SERVER_DIR%
start "" "%SERVER_DIR%\%START_BAT%"

echo [%date% %time%] Update script finished. Server is running. >> "%LOG_FILE%"
echo ============================== >> "%LOG_FILE%"

endlocal

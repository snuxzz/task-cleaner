@echo off
title Background Killer - Close Tray Apps
color 0c

:: Check administrator privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ========================================
    echo   ADMINISTRATOR RIGHTS REQUIRED
    echo ========================================
    echo.
    echo Right click -^> Run as administrator
    echo.
    pause
    exit /b
)

cls
echo ========================================
echo   BACKGROUND KILLER - CLOSE TRAY APPS
echo ========================================
echo.
echo Closing unnecessary background processes...
echo.

:: === LIST OF APPS TO CLOSE ===

:: Messengers & Social
taskkill /f /im Discord.exe >nul 2>&1 && echo [OK] Discord closed
taskkill /f /im Slack.exe >nul 2>&1 && echo [OK] Slack closed
taskkill /f /im Teams.exe >nul 2>&1 && echo [OK] Microsoft Teams closed
taskkill /f /im Telegram.exe >nul 2>&1 && echo [OK] Telegram closed
taskkill /f /im Signal.exe >nul 2>&1 && echo [OK] Signal closed
taskkill /f /im Skype.exe >nul 2>&1 && echo [OK] Skype closed
taskkill /f /im WhatsApp.exe >nul 2>&1 && echo [OK] WhatsApp closed
taskkill /f /im Zoom.exe >nul 2>&1 && echo [OK] Zoom closed

:: Gaming platforms
taskkill /f /im Steam.exe >nul 2>&1 && echo [OK] Steam closed
taskkill /f /im "EpicGamesLauncher.exe" >nul 2>&1 && echo [OK] Epic Games closed
taskkill /f /im "Battle.net.exe" >nul 2>&1 && echo [OK] Battle.net closed
taskkill /f /im "GalaxyClient.exe" >nul 2>&1 && echo [OK] GOG Galaxy closed
taskkill /f /im Origin.exe >nul 2>&1 && echo [OK] Origin closed
taskkill /f /im "UbisoftConnect.exe" >nul 2>&1 && echo [OK] Ubisoft Connect closed
taskkill /f /im RiotClientServices.exe >nul 2>&1 && echo [OK] Riot Client closed

:: Music & Streaming
taskkill /f /im Spotify.exe >nul 2>&1 && echo [OK] Spotify closed
taskkill /f /im TIDAL.exe >nul 2>&1 && echo [OK] TIDAL closed
taskkill /f /im AppleMusic.exe >nul 2>&1 && echo [OK] Apple Music closed
taskkill /f /im Music.UI.exe >nul 2>&1 && echo [OK] Amazon Music closed

:: Cloud & Backup
taskkill /f /im OneDrive.exe >nul 2>&1 && echo [OK] OneDrive closed
taskkill /f /im Dropbox.exe >nul 2>&1 && echo [OK] Dropbox closed
taskkill /f /im "GoogleDriveFS.exe" >nul 2>&1 && echo [OK] Google Drive closed
taskkill /f /im iCloudServices.exe >nul 2>&1 && echo [OK] iCloud closed

:: Utilities & Tools
taskkill /f /im "Creative Cloud.exe" >nul 2>&1 && echo [OK] Adobe Creative Cloud closed
taskkill /f /im "Creative Cloud UI Helper.exe" >nul 2>&1 && echo [OK] Adobe UI Helper closed
taskkill /f /im jetbrains-toolbox.exe >nul 2>&1 && echo [OK] JetBrains Toolbox closed
taskkill /f /im "Docker Desktop.exe" >nul 2>&1 && echo [OK] Docker Desktop closed
taskkill /f /im "Roland Cloud Manager.exe" >nul 2>&1 && echo [OK] Roland Cloud closed
taskkill /f /im upc.exe >nul 2>&1 && echo [OK] UPC helper closed

:: Other
taskkill /f /im qbittorrent.exe >nul 2>&1 && echo [OK] qBittorrent closed
taskkill /f /im transmission-qt.exe >nul 2>&1 && echo [OK] Transmission closed

echo.
echo ========================================
echo   ALL BACKGROUND PROCESSES CLOSED
echo ========================================
echo.
echo You can now run your game - RAM has been freed!
echo.

timeout /t 2 /nobreak >nul
exit

# task-cleaner
## 📥 Download

1. Click **Code** → **Download ZIP**
2. Extract the ZIP file
3. Take `task-cleaner.bat` (you can delete the rest)
4. Right click → **Run as administrator**

   ## ⚠️ Windows may block this file

When you download `task-cleaner.bat`, Windows Smart App Control may block it.

**Why?** Because the file comes from the internet. Windows blocks ALL `.bat` files from the internet – even safe ones.

**Solution:**
1. Right click `task-cleaner.bat` → Properties
2. Check "Unblock" at the bottom
3. Click OK

Or click "More info" → "Run anyway".

The code is open source – you can open it in Notepad and see exactly what it does. No hidden malware or something like that.

   
Clean unnecessary background tasks with one click


# ⭐ Task-Cleaner ⭐

Clean unnecessary background tasks with **one click**.

---

## ⚠️ DISCLAIMER

The original code in this repository is safe and open source.

**If someone modifies this code** (adds malicious lines, recompiles to `.exe`, or sells it) – that's on them, not the original developer.

Always check code before running. Use modified versions at your own risk.

---

## 📌 What it does

Closes programs that run in the background (system tray) :

| Category | Apps |
|----------|------|
| 💬 Messengers | Discord, Slack, Teams, Telegram, Signal, Skype, WhatsApp, Zoom |
| 🎮 Gaming | Steam, Epic Games, Battle.net, GOG Galaxy, Origin, Ubisoft, Riot |
| 🎵 Music | Spotify, TIDAL, Apple Music, Amazon Music |
| ☁️ Cloud | OneDrive, Dropbox, Google Drive, iCloud |
| 🛠️ Tools | Adobe Creative Cloud, JetBrains, Docker |
| 📦 Other | qBittorrent, Transmission |

---

## 🚀 Why use it

| Feature | Benefit |
|---------|---------|
| ⚡ One click | No need to close each app manually |
| 🎯 Frees RAM | Better gaming performance |
| ⏱️ 2 seconds | Runs fast and closes itself |
| 🔒 Safe | Only user apps – nothing system-critical |

---

## 📋 Requirements

| Requirement | Details |
|-------------|---------|
| 💻 OS | Windows 11 (works on Windows 10 too) |
| 👑 Rights | Run as administrator |
| 📦 Dependencies | None – uses only built-in Windows commands |

---

## 🛠️ How to add your own apps

Open the script in Notepad and add this line:

```batch
taskkill /f /im "YourApp.exe" >nul 2>&1 && echo [OK] Your App closed
How to find the process name:

Press Ctrl + Shift + Esc (Task Manager)

Find your app → Right click → Go to details

Copy the .exe name

Example – adding Chrome:

batch
taskkill /f /im chrome.exe >nul 2>&1 && echo [OK] Chrome closed

```

## 💻 THE BAT CODE (program)

You can download `task-cleaner.bat`, right click it, and select **Edit** in Notepad to see the code yourself.

## 📜 Full code

```batch
@echo off
title Task-Cleaner
color 0a

:: Check administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ========================================
    echo        TASK-CLEANER
    echo ========================================
    echo.
    echo [ERROR] Run as administrator!
    echo.
    echo Right click -^> Run as administrator
    echo.
    pause
    exit /b
)

cls
echo ========================================
echo        TASK-CLEANER
echo ========================================
echo.
echo Closing background tasks...
echo.

:: MESSENGERS
taskkill /f /im Discord.exe >nul 2>&1 && echo [OK] Discord
taskkill /f /im Slack.exe >nul 2>&1 && echo [OK] Slack
taskkill /f /im Teams.exe >nul 2>&1 && echo [OK] Microsoft Teams
taskkill /f /im Telegram.exe >nul 2>&1 && echo [OK] Telegram
taskkill /f /im Signal.exe >nul 2>&1 && echo [OK] Signal
taskkill /f /im Skype.exe >nul 2>&1 && echo [OK] Skype
taskkill /f /im WhatsApp.exe >nul 2>&1 && echo [OK] WhatsApp
taskkill /f /im Zoom.exe >nul 2>&1 && echo [OK] Zoom

:: GAMING
taskkill /f /im Steam.exe >nul 2>&1 && echo [OK] Steam
taskkill /f /im "EpicGamesLauncher.exe" >nul 2>&1 && echo [OK] Epic Games
taskkill /f /im "Battle.net.exe" >nul 2>&1 && echo [OK] Battle.net
taskkill /f /im "GalaxyClient.exe" >nul 2>&1 && echo [OK] GOG Galaxy
taskkill /f /im Origin.exe >nul 2>&1 && echo [OK] Origin
taskkill /f /im "UbisoftConnect.exe" >nul 2>&1 && echo [OK] Ubisoft Connect
taskkill /f /im RiotClientServices.exe >nul 2>&1 && echo [OK] Riot Client

:: MUSIC
taskkill /f /im Spotify.exe >nul 2>&1 && echo [OK] Spotify
taskkill /f /im TIDAL.exe >nul 2>&1 && echo [OK] TIDAL
taskkill /f /im AppleMusic.exe >nul 2>&1 && echo [OK] Apple Music
taskkill /f /im Music.UI.exe >nul 2>&1 && echo [OK] Amazon Music

:: CLOUD
taskkill /f /im OneDrive.exe >nul 2>&1 && echo [OK] OneDrive
taskkill /f /im Dropbox.exe >nul 2>&1 && echo [OK] Dropbox
taskkill /f /im "GoogleDriveFS.exe" >nul 2>&1 && echo [OK] Google Drive
taskkill /f /im iCloudServices.exe >nul 2>&1 && echo [OK] iCloud

:: TOOLS
taskkill /f /im "Creative Cloud.exe" >nul 2>&1 && echo [OK] Adobe Creative Cloud
taskkill /f /im jetbrains-toolbox.exe >nul 2>&1 && echo [OK] JetBrains Toolbox
taskkill /f /im "Docker Desktop.exe" >nul 2>&1 && echo [OK] Docker Desktop

:: OTHER
taskkill /f /im qbittorrent.exe >nul 2>&1 && echo [OK] qBittorrent
taskkill /f /im transmission-qt.exe >nul 2>&1 && echo [OK] Transmission

echo.
echo ========================================
echo        ALL DONE!
echo ========================================
echo.

timeout /t 2 /nobreak >nul
exit

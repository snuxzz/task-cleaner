# task-cleaner
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

Closes programs that run in the background (system tray):

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

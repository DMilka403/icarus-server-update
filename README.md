# Icarus Dedicated Server – Auto Update Script for WINDOWS

This script allows you to:  
- Stop the Icarus server if it is running  
- Update it via SteamCMD  
- Start the server after the update and keep it running  
- Log all actions to a log file (`log_update.txt`)

## Prerequisites

- Windows  
- SteamCMD installed  
- Dedicated Icarus server set up and working  
- **No Steam account required**

---

## Recommended Folder Structure

C:\icarusserver\
  ├─ IcarusServer-Win64-Shipping.exe
  ├─ start.bat
  ├─ update.bat
  └─ log_update.txt (created automatically)

C:\SteamCMD\
  └─ steamcmd.exe

---

## Installation

1. Copy update.bat to :
   C:\icarusserver\

2. Open update.bat with Notepad

3. Verify or edit the following variables if needed:  
- `STEAMCMD_DIR` → path to SteamCMD  
- `SERVER_DIR` → path to your Icarus server  
- `SERVER_EXE` → exact name of the server executable  
- `START_BAT` → script that launches the server

---

## Usage

- Right-click on `update.bat` → **Run as administrator**  
- The script will stop the server if it is running, update it, and then start it.  
- The server will **remain running** after the update.

---

## Logs

All actions are logged in: 
C:\icarusserver\log_update.txt
Check this file first if anything goes wrong.

---

## Recommendations

- Run the script when no players are connected for safety  
- Backup the `Saved` folder regularly  
- You can automate it using **Windows Task Scheduler**  

---

## Troubleshooting

If the server does not start after the update:  
1. Check the exact name of the server `.exe`  
2. Verify the folder paths in the script  
3. Consult `log_update.txt` for detailed error messages

## License

This script is under the **MIT License**. See the `LICENSE` file for details.

# ByeCopilot

An open-source utility to remove Windows Copilot, pre-installed bloatware applications, and telemetry from Windows 10 and Windows 11.

## Features

- **Disable Windows Copilot**: Disables Copilot policies, removes Copilot AppX packages, and turns off Edge AI buttons.
- **Turn off Windows Recall & AI**: Disables background AI snapshot and analysis features.
- **Remove Pre-installed Bloatware**: Cleans up sponsored apps, casual games, and unused pre-installed packages.
- **Privacy & Telemetry**: Stops diagnostics tracking services and telemetry tasks.
- **Start Menu Cleanup**: Disables Bing web results inside Windows search.
- **Safety First**: Option to create a system restore point prior to applying changes.
- **GUI & Terminal**: Includes both an interactive menu and a standalone graphical interface.

## Project Structure

```
ByeCopilot/
├── src/
│   ├── ByeCopilot.ps1         # Main script
│   ├── gui/
│   │   └── SimpleGUI.ps1      # Graphical interface
│   └── modules/
│       ├── BackupRestore.psm1 # Restore point manager
│       ├── Bloatware.psm1     # AppX package uninstaller
│       ├── Copilot.psm1       # Copilot and AI remover
│       ├── Telemetry.psm1     # Privacy policies manager
│       └── WindowsUI.psm1     # Search and taskbar tweaks
├── Run.bat                    # One-click administrator launcher
├── README.md
└── LICENSE
```

## How to Run

1. Download or clone this repository.
2. Right-click `Run.bat` and select **Run as administrator** (or double-click it).
3. Choose your preferred action from the menu, or select the GUI mode.

## License

This project is licensed under the MIT License.

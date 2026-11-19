@echo off
:: ==============================================================================
::  ByeCopilot Launcher - Runs ByeCopilot with Administrative Privileges
:: ==============================================================================
title ByeCopilot Launcher
cd /d "%~dp0"

:: Check for administrative rights
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :run_script
) else (
    goto :elevate
)

:elevate
echo [i] Requesting Administrative privileges...
powershell -Command "Start-Process cmd.exe -ArgumentList '/c \"\"%~f0\"\"' -Verb RunAs"
exit /b

:run_script
echo Starting ByeCopilot...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0src\ByeCopilot.ps1"
if %errorlevel% neq 0 (
    echo.
    echo Script ended or paused.
    pause
)

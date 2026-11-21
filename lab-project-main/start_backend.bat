@echo off
title SmartLab Monitor - Backend Server
cd /d "%~dp0"

echo Starting SmartLab Monitor Backend Server...
echo.

where python >nul 2>&1
if %ERRORLEVEL% equ 0 (
    python app.py
    goto end
)

where py >nul 2>&1
if %ERRORLEVEL% equ 0 (
    py -3 app.py
    goto end
)

echo [ERROR] Python was not found in your system PATH!
echo Please ensure Python 3.10+ is installed and added to PATH.
echo.
pause

:end

@echo off
chcp 65001 >nul
title Google AI Pro - Cai dat lan dau va khoi dong
cd /d "%~dp0"

echo ======================================================================
echo   Dang kiem tra va cai dat goi phu thuoc Python...
echo ======================================================================

where py >nul 2>nul
if errorlevel 1 (
    echo [LOI] Khong tim thay Python Launcher. Hay cai Python 3.10 va chon Add Python to PATH.
    pause
    exit /b 1
)

py -3.10 -m pip install --upgrade pip
if errorlevel 1 (
    echo [LOI] Khong the cap nhat pip.
    pause
    exit /b 1
)

py -3.10 -m pip install -r requirements.txt --index-url https://pypi.org/simple --timeout 60 --retries 3
if errorlevel 1 (
    echo [LOI] Cai dependency that bai. Kiem tra ket noi Internet roi chay lai file nay.
    pause
    exit /b 1
)

echo.
echo ======================================================================
echo   Cai trinh duyet Playwright Chromium...
echo ======================================================================
py -3.10 -m playwright install chromium
if errorlevel 1 (
    echo [LOI] Khong the cai Chromium cho Playwright.
    pause
    exit /b 1
)

echo.
echo ======================================================================
echo   Dang khoi dong Web console tai http://127.0.0.1:8765 ...
echo ======================================================================
start "" "http://127.0.0.1:8765"
py -3.10 app.py
pause

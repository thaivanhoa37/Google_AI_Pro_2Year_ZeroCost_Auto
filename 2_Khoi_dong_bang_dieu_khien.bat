@echo off

chcp 65001 >nul
title Google AI Pro - Khoi dong bang dieu khien
cd /d "%~dp0"

echo ======================================================================

echo   Dang khoi dong Google AI Pro...
echo   Dia chi Web console: http://127.0.0.1:8765
echo ======================================================================

start "" "http://127.0.0.1:8765"

py -3.10 app.py
pause

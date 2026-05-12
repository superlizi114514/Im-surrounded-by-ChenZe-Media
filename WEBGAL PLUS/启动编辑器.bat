@echo off
chcp 65001 >nul 2>&1
cd /d "%~dp0.."

echo ====================================
echo   WebGal PLUS Editor
echo ====================================
echo.
echo [1/2] Starting file sync service (port 3003)...
start "" cmd /c "node tools\server.js"
timeout /t 2 >nul
echo [2/2] Opening editor...
start "" "WEBGAL PLUSditor.html"
echo.
echo   Editor opened in browser.
echo   If Chrome AI unavailable, set API Key in editor.
echo.
pause

@echo off
cd /d "%~dp0.."

echo ====================================
echo   WebGal PLUS Editor
echo ====================================
echo.
echo [1/2] Starting sync service (port 3003)...
start "Server" cmd /c "node tools\server.js"
timeout /t 2 >nul 2>&1

echo [2/2] Opening editor...
start "" "WEBGAL PLUS\editor.html"

echo.
echo   Done. Editor opened in browser.
echo   If Chrome AI unavailable, set API Key in editor.
echo.
pause

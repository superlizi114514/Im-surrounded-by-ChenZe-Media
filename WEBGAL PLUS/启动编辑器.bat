@echo off
chcp 65001 >nul
cd /d "%~dp0.."

echo ═══════════════════════════════════
echo   🎮 WebGal PLUS 编辑器
echo ═══════════════════════════════════
echo.

echo [1/2] 启动文件同步服务 (端口 3003)...
start "WebGal-Server" cmd /c "node tools\server.js"
timeout /t 2 >nul

echo [2/2] 打开编辑器...
start "" "WEBGAL PLUS\editor.html"

echo.
echo   编辑器已在浏览器中打开。
echo   如果 Chrome 内置 AI 不可用，请设置 API Key。
echo.
pause

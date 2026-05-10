@echo off
chcp 65001 >nul
echo ========================================
echo   FLAC 转 MP3 批量转换工具
echo   目标：展虎、陈泽、配角、王女开
echo ========================================
echo.

REM 检查 ffmpeg 是否存在
where ffmpeg >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [错误] 未找到 ffmpeg!
    echo.
    echo 请先安装 ffmpeg:
    echo 1. 访问 https://www.gyan.dev/ffmpeg/builds/
    echo 2. 下载 ffmpeg-release-essentials.zip
    echo 3. 解压并将 bin 目录添加到 PATH
    echo.
    echo 或者使用 winget 安装:
    echo winget install ffmpeg
    echo.
    pause
    exit /b 1
)

echo [信息] ffmpeg 已检测到
echo.

REM 获取当前目录
set "SOURCE_DIR=%~dp0"
set "COUNT=0"
set "ERRORS=0"

echo 开始转换 FLAC 文件为 MP3 格式...
echo.

REM 遍历所有子目录的 FLAC 文件
for /r "%SOURCE_DIR%" %%f in (*.flac) do (
    set "FILEPATH=%%f"

    REM 检查是否在目标文件夹中
    echo "%%f" | findstr /i "展虎 陈泽 配角 王女开" >nul
    if %ERRORLEVEL% equ 0 (
        REM 生成输出文件名 (.flac -> .mp3)
        set "OUTPUT=%%~dpnf.mp3"

        echo [转换] %%~nxf -^> %%~nf.mp3

        REM 使用 ffmpeg 转换 (320kbps 高质量)
        ffmpeg -i "%%f" -codec:a libmp3lame -b:a 320k -y "%%~dpnf.mp3" 2>nul

        if %ERRORLEVEL% equ 0 (
            echo [成功] %%~nf.mp3
            set /a COUNT+=1
        ) else (
            echo [失败] %%~nxf
            set /a ERRORS+=1
        )
        echo.
    )
)

echo ========================================
echo   转换完成!
echo   成功：%COUNT% 个文件
echo   失败：%ERRORS% 个文件
echo ========================================
echo.

if %ERRORS% equ 0 (
    echo 是否删除原始 FLAC 文件？(Y/N)
    set /p DELETE_CONFIRM=
    if /i "%DELETE_CONFIRM%"=="Y" (
        echo 正在删除原始 FLAC 文件...
        for /r "%SOURCE_DIR%" %%f in (*.flac) do (
            echo "%%f" | findstr /i "展虎 陈泽 配角 王女开" >nul
            if %ERRORLEVEL% equ 0 (
                del "%%f"
                echo [已删除] %%~nxf
            )
        )
    )
)

echo.
pause

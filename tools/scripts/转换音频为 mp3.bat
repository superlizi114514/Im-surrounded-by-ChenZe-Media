@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   FLAC 转 MP3 工具 - 陈泽传媒
echo ========================================
echo.

cd /d "%~dp0WebGal_Terre"

node -e "
const ffmpeg = require('fluent-ffmpeg');
const ffmpegPath = require('ffmpeg-static');
const path = require('path');
const fs = require('fs');

// 设置 ffmpeg 路径
ffmpeg.setFfmpegPath(ffmpegPath);

const vocalDir = path.join(__dirname, 'public', 'games', 'chENZE-game', 'game', 'vocal');
const sourceDir = path.join(__dirname, '..', '人物语音');

console.log('正在转换人物语音为 MP3 格式...');
console.log('ffmpeg 路径:', ffmpegPath);
console.log('源目录:', sourceDir);
console.log('目标目录:', vocalDir);
console.log('');

// 确保目标目录存在
if (!fs.existsSync(vocalDir)) {
  fs.mkdirSync(vocalDir, { recursive: true });
}

fs.readdir(sourceDir, (err, files) => {
  if (err) {
    console.error('读取源目录失败:', err);
    return;
  }

  const flacFiles = files.filter(f => f.endsWith('.flac'));
  console.log('找到', flacFiles.length, '个 FLAC 文件');
  console.log('');

  let completed = 0;
  flacFiles.forEach((file, index) => {
    const sourcePath = path.join(sourceDir, file);
    const targetFile = file.replace('.flac', '.mp3');
    const targetPath = path.join(vocalDir, targetFile);

    console.log('[' + (index+1) + '/' + flacFiles.length + '] 转换:', file);

    ffmpeg(sourcePath)
      .toFormat('mp3')
      .audioBitrate(128)
      .save(targetPath)
      .on('end', () => {
        completed++;
        console.log('  完成！');
        if (completed === flacFiles.length) {
          console.log('');
          console.log('========================================');
          console.log('  全部转换完成！共', completed, '个文件');
          console.log('========================================');
          console.log('');
          console.log('提示：转换后的 MP3 文件已保存到:');
          console.log('  ' + vocalDir);
          console.log('');
          console.log('记得在脚本中引用 .mp3 格式，例如:');
          console.log('  角色：台词 -文件名.mp3;');
        }
      })
      .on('error', (err) => {
        console.error('  错误:', err.message);
      });
  });
});
"

pause

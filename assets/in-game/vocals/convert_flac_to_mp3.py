#!/usr/bin/env python3
"""
FLAC 转 MP3 批量转换工具
目标：展虎、陈泽、配角、王女开
"""

import subprocess
import os
from pathlib import Path

# 目标文件夹
TARGET_DIRS = ["展虎", "陈泽", "配角", "王女开"]
SOURCE_DIR = Path(__file__).parent

def convert_flac_to_mp3(flac_path: Path) -> bool:
    """使用 ffmpeg 转换 FLAC 为 MP3 (320kbps)"""
    mp3_path = flac_path.with_suffix('.mp3')

    cmd = [
        'ffmpeg',
        '-i', str(flac_path),
        '-codec:a', 'libmp3lame',
        '-b:a', '320k',
        '-y',  # 覆盖已存在的文件
        str(mp3_path)
    ]

    try:
        result = subprocess.run(
            cmd,
            capture_output=True,
            check=True
        )
        return True
    except subprocess.CalledProcessError as e:
        print(f"  [错误] {e}")
        return False

def main():
    print("=" * 50)
    print("  FLAC 转 MP3 批量转换工具")
    print("  目标：展虎、陈泽、配角、王女开")
    print("=" * 50)
    print()

    converted = 0
    failed = 0
    total_files = []

    # 收集所有目标文件
    for target_dir in TARGET_DIRS:
        target_path = SOURCE_DIR / target_dir
        if target_path.exists():
            for flac_file in target_path.glob("*.flac"):
                total_files.append(flac_file)

    # 也处理根目录下的 FLAC 文件（如果文件名包含目标关键词）
    for flac_file in SOURCE_DIR.glob("*.flac"):
        if any(keyword in flac_file.name for keyword in TARGET_DIRS):
            if flac_file not in total_files:
                total_files.append(flac_file)

    print(f"找到 {len(total_files)} 个 FLAC 文件")
    print()

    if not total_files:
        print("没有找到需要转换的文件!")
        return

    # 开始转换
    for flac_path in total_files:
        rel_path = flac_path.relative_to(SOURCE_DIR)
        print(f"[转换] {rel_path}")

        if convert_flac_to_mp3(flac_path):
            mp3_path = flac_path.with_suffix('.mp3')
            print(f"  [成功] {mp3_path.relative_to(SOURCE_DIR)}")
            converted += 1
        else:
            failed += 1
        print()

    # 统计
    print("=" * 50)
    print(f"  转换完成!")
    print(f"  成功：{converted} 个文件")
    print(f"  失败：{failed} 个文件")
    print("=" * 50)
    print()

    # 询问是否删除原始文件
    if failed == 0 and converted > 0:
        response = input("是否删除原始 FLAC 文件？(Y/N): ").strip().lower()
        if response == 'y':
            for flac_path in total_files:
                flac_path.unlink()
                print(f"[已删除] {flac_path.relative_to(SOURCE_DIR)}")
            print()
            print("原始 FLAC 文件已删除!")

if __name__ == "__main__":
    main()

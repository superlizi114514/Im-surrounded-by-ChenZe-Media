# GitHub 推送指南

## 目标仓库

https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media

## 方法一：直接推送（推荐）

```bash
cd E:\xiangmu\完蛋 我被陈泽传媒包围了\GITHUBOPEN

git init
git add .
git commit -m "feat: 初始化开源仓库 - 完蛋！我被陈泽传媒包围了

- 游戏主体（WebGAL 引擎完整版）
- 素材总汇（游戏内素材 + 额外素材）
- 工具汇（编辑器 + 脚本）
- 教程（生图/配音/视频/ComfyUI/引擎指南）
- 文档（剧本/设计文档）
- 三视图模板"

git remote add origin https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media.git
git branch -M main
git push -u origin main
```

## 方法二：使用 GitHub CLI

```bash
cd E:\xiangmu\完蛋 我被陈泽传媒包围了\GITHUBOPEN

git init
git add .
git commit -m "feat: 初始化开源仓库"
git branch -M main

# 登录 GitHub CLI（首次需要）
gh auth login

# 如果仓库已存在
gh repo sync superlizi114514/Im-surrounded-by-ChenZe-Media

# 推送
git remote add origin https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media.git
git push -u origin main
```

## 注意事项

1. **文件大小限制**：GitHub 单文件限制 100MB，本项目所有单文件均在此限制下
2. **仓库总大小**：约 634MB，GitHub 免费版仓库限制推荐不超过 5GB，适合
3. **Git LFS**：如果以后加更大文件，可考虑 Git LFS 管理
4. **网络**：首次推送 634MB 需要稳定网络连接，建议使用有线网络
5. **时间**：首次推送预计需要 10-30 分钟（取决于上传速度）

## 推送后操作

1. 访问 https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media 确认上传成功
2. 在仓库 Settings → Pages 中启用 GitHub Pages，选择 main 分支
3. 用户可直接通过 GitHub Pages 链接在线体验游戏（需配置 WebGAL）

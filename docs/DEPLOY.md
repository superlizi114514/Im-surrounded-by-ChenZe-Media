# 完蛋！我被陈泽传媒包围了 - GitHub Pages 部署指南

## 第一步：在 GitHub 创建仓库

1. 访问 https://github.com/new
2. 仓库名称：`wdwcmbwl` (完蛋我被陈泽传媒包围了的首字母)
3. 设为公开仓库 (Public)
4. 点击 "Create repository"

## 第二步：推送代码到 GitHub

打开命令行（PowerShell 或 Git Bash），执行：

```bash
cd "E:\项目总\完蛋 我被陈泽传媒包围了\webgal"
git remote add origin https://github.com/你的用户名/wdwcmbwl.git
git branch -M main
git push -u origin main
```

**注意**：将 `你的用户名` 替换为你的 GitHub 用户名

## 第三步：启用 GitHub Pages

1. 进入仓库页面
2. 点击 **Settings** → **Pages**
3. Source 选择 **Deploy from a branch**
4. Branch 选择 **main**，文件夹选择 **/(root)**
5. 点击 **Save**

## 第四步：访问游戏

等待 1-2 分钟后，GitHub Pages 会生成一个 URL：
```
https://你的用户名.github.io/wdwcmbwl/
```

打开链接即可在线游玩！

## 第五步：分享给朋友

将生成的 GitHub Pages 链接分享给朋友即可。

---

## 本地测试

如果需要本地测试，可以直接打开：
```
E:\项目总\完蛋 我被陈泽传媒包围了\webgal\game\index.html
```

双击文件即可在浏览器中运行游戏。

## 更新游戏

修改游戏后，推送更新：

```bash
cd "E:\项目总\完蛋 我被陈泽传媒包围了\webgal"
git add .
git commit -m "更新说明"
git push
```

等待几分钟后，在线版本会自动更新。

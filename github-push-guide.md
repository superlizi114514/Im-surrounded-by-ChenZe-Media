# GitHub 推送指南

## 目标

- 主仓库：https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media
- 将所有内容推送到仓库和 Wiki

---

## 方案一：在本机直接推送

```bash
cd E:\xiangmu\完蛋 我被陈泽传媒包围了\GITHUBOPEN

git init
git add .
git commit -m "feat: 初始化开源仓库 - 完蛋！我被陈泽传媒包围了"

# HTTPS 方式（需要 Personal Access Token）
git remote add origin https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media.git
git branch -M main
git push -u origin main
```

如果遇到网络超时，可尝试：
- 使用代理：`git config --global http.proxy http://127.0.0.1:7890`
- 或使用 SSH：`git remote set-url origin git@github.com:superlizi114514/Im-surrounded-by-ChenZe-Media.git`

## 方案二：打包后在能连 GitHub 的机器上推送

```bash
# 1. 打包整个 GITHUBOPEN 目录
# 用压缩软件打包成 zip/rar

# 2. 传到能连 GitHub 的机器上解压

# 3. 推送
cd GITHUBOPEN
git init
git add .
git commit -m "feat: 初始化开源仓库"
git branch -M main
git remote add origin https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media.git
git push -u origin main
```

## 推送后：设置 GitHub Wiki

GitHub 每个仓库自动带一个 Wiki 功能（不需要额外创建）。
把 README 内容放到 Wiki 首页，方便不下载也能看：

### 方法一：Git 推送

```bash
# 克隆 Wiki 仓库
git clone https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media.wiki.git

# 或者用 SSH
git clone git@github.com:superlizi114514/Im-surrounded-by-ChenZe-Media.wiki.git

# 把 README.md 复制为 Home.md
cp README.md Home.md

# 推送到 Wiki
cd Im-surrounded-by-ChenZe-Media.wiki
git add Home.md
git commit -m "docs: 初始化 Wiki 首页 - 包含制作过程说明"
git push
```

### 方法二：网页端直接编辑

1. 打开 https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/wiki
2. 点击 "Create the first page"
3. 把本仓库 `README.md` 的内容粘贴进去
4. 保存即可

## 推送后操作清单

- [ ] 确认 `https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media` 上传成功
- [ ] 检查文件完整性（1874 个文件，634MB）
- [ ] 在 Wiki 里粘贴 README 内容
- [ ] 可选：在仓库 Settings → Pages 启用 GitHub Pages
- [ ] 在 README 最上方添加 "本项目也同步在 Wiki 中，不下即可查阅制作过程"

# 如何用 GitHub 提交你的游戏进度

## 为什么要学这个？

做游戏不是一天的事。今天写了一章剧本，明天做了几张立绘，后天加了配音——你需要一个地方**安全地保存进度**，并且**能随时回溯到之前版本**。

GitHub 就是做这个的。免费的，新手也能学会。

---

## 第 1 步：安装 Git

Git 是一个"版本控制工具"，用来记录文件的每次修改。

**Windows 用户**：
- 下载：https://git-scm.com/download/win
- 安装时一路点"下一步"，全部默认选项即可
- 安装完成后，在任何文件夹右键 → 选择 **"Open Git Bash here"**

验证安装：打开 Git Bash，输入：
```bash
git --version
# 看到 git version 2.xx 就说明装好了
```

---

## 第 2 步：注册 GitHub 账号

1. 打开 https://github.com
2. 点右上角 **Sign up**
3. 填写用户名、邮箱、密码
4. 验证邮箱

记住你的用户名，比如 `mygame2025`。

---

## 第 3 步：创建你自己的仓库

1. 登录 GitHub，点右上角 **+** → **New repository**
2. 仓库名：`my-game`（随便起）
3. 选择 **Public**（公开，别人能看到）
4. **不要勾选** "Add a README file"（后面自己加）
5. 点 **Create repository**

创建后会看到一个引导页，上面有命令提示，先别管。

---

## 第 4 步：把你的游戏目录变成 Git 仓库

打开 Git Bash，进入你的游戏项目目录：

```bash
cd "你的游戏目录路径"
# 例如：cd "C:/Users/你的用户名/Documents/my-game"
```

初始化 Git：

```bash
git init
```

---

## 第 5 步：创建 .gitignore（忽略不需要上传的文件）

在项目根目录新建 `.gitignore` 文件（注意前面有个点），内容：

```
# 临时文件
*.tmp
*.log
.DS_Store
Thumbs.db
```

---

## 第 6 步：提交你的第一次进度

```bash
# 添加所有文件到暂存区
git add .

# 提交（记录这次改动）
git commit -m "初始化项目：创建了第一章剧本和基本结构"

# 关联你的 GitHub 仓库
git remote add origin https://github.com/你的用户名/my-game.git

# 上传到 GitHub
git branch -M main
git push -u origin main
```

推送成功后，刷新 GitHub 页面，你的文件就在网上了！

---

## 日常使用：改一点 → 存一点

每次做了一些修改后（比如写了一幕新剧情、加了张立绘），执行：

```bash
git add .
git commit -m "新增：第二章第三幕 - 教室吵架事件"
git push
```

养成习惯：**每做一点就 commit 一次**。这样万一回头觉得某段写得不好，可以随时找回之前的版本。

---

## 想给这个项目贡献？

1. 在 GitHub 上打开本仓库：https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media
2. 点右上角 **Fork**（复制到你自己的账号下）
3. 在你 Fork 的仓库里修改（改剧本、加配音、画立绘等）
4. 修改完成后，回到原仓库 → 点 **Pull Request** → **New Pull Request** → 选择你的改动
5. 写清楚你改了啥，提交

我会审阅后合并进来。你的名字会出现在贡献者名单里。

---

## 如果想把自己的项目也开源出来

和上面步骤一样，只是：
- 仓库名用你自己的项目名
- 写一个 README.md 说明你的游戏（参考本仓库的 README）
- 选择合适的 License（MIT 最宽松）

---

## 常见问题

| 问题 | 解决 |
|------|------|
| push 报错"Permission denied" | 检查远程地址，确认用的是你的仓库地址 |
| push 报错"failed to push" | `git pull origin main --rebase` 再试 |
| 不小心提交了不该提交的文件 | `git rm --cached 文件名`，然后重新 commit |
| 想回到之前的版本 | `git log` 找到版本号，`git reset --hard 版本号`（谨慎） |
| 忘了自己改了什么 | `git status` 看当前状态，`git diff` 看具体改动 |

---

> **GitHub 就像游戏存档——你永远可以读档回去。大胆折腾。**

---

- Git 官方教程：https://git-scm.com/book/zh/v2
- GitHub 帮助：https://docs.github.com
- 本仓库 Wiki：https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/wiki

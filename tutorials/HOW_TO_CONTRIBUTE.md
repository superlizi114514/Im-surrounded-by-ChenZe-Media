# 如何提交你的内容到这个仓库

> 目标仓库：[https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media)

---

## 方法一：Fork + Pull Request（推荐）

适合：你做了新内容（新章节、新立绘、新配音等），想合并到主仓库。

### 1. Fork 本仓库

打开上面链接 → 右上角点 **Fork** → 选你自己的账号。Fork 完成后会跳到你账号下的副本。

### 2. 克隆到本地

```bash
git clone https://github.com/你的用户名/Im-surrounded-by-ChenZe-Media.git
cd Im-surrounded-by-ChenZe-Media
```

### 3. 创建你的分支

**分支命名规范**：`作者名/内容简述`

```bash
git checkout -b 你的昵称/新章节第一章
```

例子：
```bash
git checkout -b xiaoming/add-chapter2
git checkout -b zhangsan/new-chenze-sprites
git checkout -b wangwu/bugfix-audio
```

### 4. 修改 + 提交

做了内容后：
```bash
git add .
git commit -m "新增：第一章第二幕 - 教室日常"
git push -u origin 你的昵称/新章节第一章
```

### 5. 发起 Pull Request

回到 GitHub 上你的 Fork 仓库 → 点 **Pull Request** → **New Pull Request**。

**PR 标题格式**：`[类型] 简要描述`

**PR 描述模板**（复制填写）：
```
## 作者
你的昵称

## 内容
简要说明做了什么改动

## 是否允许协作
- [ ] 允许其他人基于此分支继续开发
- [ ] 仅由本人维护
```

### 6. 等待合入

我会审阅后合并。如果有修改建议会在 PR 里讨论。

---

## 方法二：直接在 issue 里提交

适合：你不会用 Git，但有剧本/图片/配音想分享。

在 [Issues](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/issues) 页面点 **New Issue**，标题写清楚内容，正文贴链接或直接贴文本，上传附件。我帮你整合进仓库。

---

## 分支协作规则

| 规则 | 说明 |
|------|------|
| **命名格式** | `作者名/内容简述` |
| **作者标记** | PR 描述中必须写明作者昵称 |
| **允许他人协作** | PR 描述中勾选是否开放协作 |
| **开放协作** | 勾选后，其他人可以在你的分支上继续加内容 |
| **仅本人维护** | 勾选后，只有你能 push，其他人想参与需新开分支 |

---

## 内容规范

提交前确认：
- 图片文件不太大（单张 < 5MB）
- 立绘用 PNG 透明背景，背景图 1920×1080
- 配音用 MP3，命名用台词内容（方便识别）
- 剧本用 `.txt` 文件，放 `game/scene/`
- 不要提交 `.zip` `.rar` `.7z` 等压缩包
- 不要提交 `node_modules/` 和临时文件

---

## 常见问题

| 问题 | 解决 |
|------|------|
| 不会装 Git | 在 Issues 里直接提交，我来处理 |
| Fork 找不到原仓库 | 确保登录状态，点本仓库链接再 Fork |
| PR 被拒了 | 看 PR 里的 Review 意见，改完再推 |
| 想和别人的分支合并 | 在 PR 里 @ 对方，商量好再操作 |

---

> **不会写代码也能做游戏，不会用 Git 也能贡献。写剧本、画立绘、配语音——总有一块你能参与。**

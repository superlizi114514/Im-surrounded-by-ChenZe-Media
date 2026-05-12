# 完蛋！我被陈泽传媒包围了

> 给天才好用的工具，他们就能创作出杰作。
>
> 对于从事剧本写作、绘画或其他艺术专业领域的从业人员来说，软件开发往往不是他们的强项。但他们有创造力、有热情创作理想的作品。
>
> —— WebGAL 引擎项目组

**你会写故事对吧？那你就已经能做游戏了。** 这个仓库就是一个完全用 WebGAL 引擎手工搓出来的 Galgame，从零到完整。我是怎么做出来的、踩过哪些坑、用到了哪些工具——全部开源在这里。

> ⚠️ **温馨提醒**：本仓库的 README、教程、剧情文档等 Markdown 文件大多数由 AI 辅助生成。格式可能不太规范，内容或许有冗余，甚至偶尔会冒出一些不知所云的东西——请多多包容。重点是游戏本身和剧本，那些是人写的。

> 🔧 **贡献不设门槛**：不用做出完整的剧情线。修一个 bug、改一句台词、加一张立绘、录一条配音，哪怕只是提个 issue 指出哪里不对劲——都是贡献。你不会所有事情，但总有你能做的一件事。详见 [如何提交你的进度](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/blob/main/tutorials/HOW_TO_CONTRIBUTE.md)。

---

## 教程索引入口

点击下方链接即可在 GitHub 上直接阅读（渲染好的图文页面）：

| 教程 | 内容 | 在线预览 |
|------|------|----------|
| 📖 **WebGAL 完全入门手册** | 从零写剧本、语法速查、完整范例 | [在线查看](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/blob/main/tutorials/WEBGAL_ENGINE.md) |
| 🎨 AI 生图教程 | Prompt 模板、工具对比、一致性技巧 | [在线查看](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/blob/main/tutorials/IMAGE_GENERATION.md) |
| 🎤 配音制作教程 | AI 合成/真人录制、Audacity 后期 | [在线查看](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/blob/main/tutorials/VOICE_DUBBING.md) |
| 🎬 视频生成教程 | AnimateDiff、规格参数、剧本调用 | [在线查看](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/blob/main/tutorials/VIDEO_GENERATION.md) |
| 🖥 ComfyUI 部署教程 | 安装步骤、工作流、模型推荐 | [在线查看](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/blob/main/tutorials/COMFYUI_SETUP.md) |
| 📤 **如何提交你的进度** | GitHub 基础操作、贡献到此项目 | [在线查看](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/blob/main/tutorials/HOW_TO_CONTRIBUTE.md) |

> 也可在 [Wiki](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/wiki) 中查看所有教程。

---

## 给萌新的梦想

WebGAL 是一个**不需要会编程**就能做视觉小说/ Galgame 的开源引擎。你只需要：

1. 用**记事本**写剧本（真的就是打字）
2. 用 **AI 工具**生成角色立绘和背景（或者自己画）
3. 把文件拖进编辑器 → 点运行 → 你的游戏就跑起来了

这个仓库就是个**完整的范例工程**。你可以直接下载运行，也可以拆开来学习每一部分是怎么做的。

---

## 仓库内容

| 目录 | 看这个学什么 |
|------|-------------|
| [game/](./game/) | **完整游戏成品** — 拿来就能跑，看看一个真正的 WebGAL 项目长什么样 |
| [tutorials/](./tutorials/) | **6 篇教程** — 从零开始手把手教你做（含 GitHub 提交流程） |
| [assets/](./assets/) | **素材** — 立绘、背景、配音、三视图，全部开源参考 |
| [tools/](./tools/) | **工具** — WebGAL 编辑器、音频转换脚本 |
| [docs/story/](./docs/story/) | **剧本** — 50+ 篇剧情文档，学学怎么写分支叙事 |

---

## 萌新入门路线

| 步骤 | 做什么 | 去哪里 |
|------|--------|--------|
| ① | 下载 WebGAL Terre 编辑器 | [官方 Release](https://github.com/OpenWebGAL/WebGAL_Terre/releases) |
| ② | 打开本仓库 `game/` 目录，跑起来看看成品 | 本仓库 |
| ③ | 读 WebGAL 完全入门手册 | [教程 →](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/blob/main/tutorials/WEBGAL_ENGINE.md) |
| ④ | 新建一个 `.txt`，写下第一句台词 | 记事本 |
| ⑤ | 导入编辑器 → 运行 → 游戏诞生 | Terre 编辑器 |
| ⑥ | 学会用 GitHub 提交你的进度 | [教程 →](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/blob/main/tutorials/HOW_TO_CONTRIBUTE.md) |

---

## 常用速查

### 手动写剧本（打开记事本就能写）

```webgal
; 旁白
:这是一段旁白。;

; 角色对话 + 配音
陈泽:"你好啊。" -chenze_hello.mp3;

; 切换背景
changeBg:教室.png;

; 显示立绘（居中）
changeFigure:陈泽_正常.png -center;

; 选项分支
choose:去教室:label_a|去网吧:label_b;

; 好感度
setVar:love=0;
setVar:love=love+5;

; BGM
bgm:music.mp3;

; 视频
playVideo:开场.mp4;
```

完整手动编写指南 → [WebGAL 完全入门手册](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/blob/main/tutorials/WEBGAL_ENGINE.md)

### 常见问题

| 问题 | 解决 |
|------|------|
| 立绘不显示 | PNG 格式，检查文件名，放 `game/figure/` |
| 背景变形 | 必须 1920×1080 |
| 语音不播 | MP3 格式，路径要和剧本中一致 |
| 中文方框 | `gui/font/` 放入中文字体 |
| 编辑器打不开 | 选项目根目录，不是 `scene/` 子目录 |
| GitHub 不会用 | 看 [提交教程](https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/blob/main/tutorials/HOW_TO_CONTRIBUTE.md) |

### 推荐工具

- **生图**：即梦（背景/道具）+ ComfyUI（立绘/视频）
- **ComfyUI 教程**：B站 [啦啦啦的小黄瓜](https://space.bilibili.com/219572544)
- **配音**：TTS 语音合成 → MP3
- **视频**：ComfyUI + AnimateDiff

### 版权

- 同人创作仅供学习交流，注意肖像权
- WebGAL 引擎 MIT 协议开源，可自由使用

---

## 技术栈
- **引擎**：[WebGAL](https://github.com/OpenWebGAL/WebGAL)
- **脚本**：WebGAL Script（`.txt` 文本文档）
- **分辨率**：1920×1080

---

## 致谢
- [WebGAL](https://github.com/OpenWebGAL/WebGAL) — 没有这个开源引擎就没有这个项目
- [啦啦啦的小黄瓜](https://space.bilibili.com/219572544) — ComfyUI 部署教程
- Banana / 即梦 — AI 生图

---

## 联系我
有任何问题、想跟着做、需要帮助——直接加我微信：

> **微信号：SiNianNiQWQ**
>
> 不要不好意思，萌新问题和大佬问题都欢迎。

## 许可证
本项目为同人创作，仅供学习交流。WebGAL 引擎基于 MIT 协议开源。

---

**GitHub**: https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media
**Wiki**: https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/wiki

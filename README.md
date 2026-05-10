# 完蛋！我被陈泽传媒包围了

> 给天才好用的工具，他们就能创作出杰作。
>
> 对于从事剧本写作、绘画或其他艺术专业领域的从业人员来说，软件开发往往不是他们的强项。但他们有创造力、有热情创作理想的作品。
>
> —— WebGAL 引擎项目组

**你会写故事对吧？那你就已经能做游戏了。** 这个仓库就是一个完全用 WebGAL 引擎手工搓出来的 Galgame，从零到完整。我是怎么做出来的、踩过哪些坑、用到了哪些工具——全部开源在这里。

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
| [tutorials/](./tutorials/) | **教程** — 从零开始手把手教你做（不用 AI 也能做） |
| [assets/](./assets/) | **素材** — 立绘、背景、配音、三视图，全部开源参考 |
| [tools/](./tools/) | **工具** — WebGAL 编辑器、音频转换脚本 |
| [docs/story/](./docs/story/) | **剧本** — 50+ 篇剧情文档，学学怎么写分支叙事 |

---

## 萌新入门路线

| 步骤 | 做什么 | 在哪里学 |
|------|--------|---------|
| ① | 下载 [WebGAL Terre 编辑器](https://github.com/OpenWebGAL/WebGAL_Terre/releases) | 官方 |
| ② | 打开本仓库 `game/` 目录，跑起来看看成品 | 本仓库 |
| ③ | 读 [WebGAL 引擎使用指南](./tutorials/WEBGAL_ENGINE.md) | 本仓库 |
| ④ | 新建一个 `.txt`，写下你的第一句台词 | 记事本 |
| ⑤ | 导入编辑器 → 点击运行 → 你的游戏诞生了 | 编辑器 |

---

## 核心注意事项（萌新必看）

### 推荐工具
- **生图**：即梦（背景）+ Banana / ComfyUI（立绘）。即梦有人脸限制，主力建议用 ComfyUI
- **ComfyUI 教程**：B站 [啦啦啦的小黄瓜](https://space.bilibili.com/219572544)
- **配音**：TTS 语音合成，导出 MP3。纯萌新可先用无声版跑通流程再加语音
- **视频过场**：ComfyUI + AnimateDiff

### 常见坑
- 立绘用 **PNG 格式**，背景 **1920x1080**
- 中文文件名可能有兼容问题，建议用英文命名图片
- 配音文件不要太大（200KB 以内），用 MP3 格式
- 写剧本时多写分号注释 `; 这是注释`，方便以后改

### 版权提醒
- 角色原型为现实人物，同人创作仅供学习交流
- WebGAL 引擎 MIT 协议开源，可自由使用

---

## 技术栈
- **引擎**：[WebGAL](https://github.com/OpenWebGAL/WebGAL)
- **脚本**：WebGAL Script（`.txt` 文本文档，记事本就能写）
- **分辨率**：1920×1080

---

## 致谢

- [WebGAL](https://github.com/OpenWebGAL/WebGAL) — 没有这个开源引擎就没有这个项目
- [啦啦啦的小黄瓜 (B站)](https://space.bilibili.com/219572544) — ComfyUI 本地部署教程
- Banana / 即梦 — AI 生图工具

---

## 许可证

本项目为同人创作，仅供学习交流。WebGAL 引擎基于 MIT 协议开源。

---

**GitHub**: https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media
**Wiki**: https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/wiki

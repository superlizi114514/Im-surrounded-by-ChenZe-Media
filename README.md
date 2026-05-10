# 完蛋！我被陈泽传媒包围了

> 给天才好用的工具，他们就能创作出杰作。
>
> 对于从事剧本写作、绘画或其他艺术专业领域的从业人员来说，软件开发往往不是他们的强项。但他们有创造力、有热情创作理想的作品。
>
> —— WebGAL 引擎项目组

> 基于 [WebGAL](https://github.com/OpenWebGAL/WebGAL) 引擎的 Galgame 开发全记录，包含完整项目源码、素材与教程

## 仓库导航

| 目录 | 说明 |
|------|------|
| [game/](./game/) | **游戏主体** - WebGAL 引擎完整游戏 |
| [assets/](./assets/) | **素材总汇** - 游戏内素材 + 额外素材 |
| [tools/](./tools/) | **工具汇** - 编辑器、脚本合集 |
| [tutorials/](./tutorials/) | **教程** - 生图、配音、视频、引擎使用 |
| [docs/](./docs/) | **文档** - 剧本、游戏设计文档 |

## 开发教程（不用下载也能看）

这个项目是怎么从 0 做出来的？下面是完整制作流程：

### 1. 写剧本

先用 Markdown 写剧情脚本（在 `docs/story/` 里），包含：
- 角色台词 + 旁白
- 选项分支设计
- 好感度变化节点
- 多线叙事结构（甜宠线 / 分手线 / 展虎线）

### 2. AI 生图

使用 **即梦** + **Banana** 生成角色立绘和背景：
- 角色立绘：正面站立、多种表情差分
- 背景图：东北小城场景、学校、网吧、家里等
- 三视图：正面 + 侧面，保持角色一致性
- 生图教程见 [tutorials/IMAGE_GENERATION.md](./tutorials/IMAGE_GENERATION.md)

### 3. 用 ComfyUI 本地部署调优

参考 [啦啦啦的小黄瓜 (B站)](https://space.bilibili.com/219572544) 的教程，本地部署 **ComfyUI** + **Stable Diffusion**：
- ControlNet 控制姿势
- AnimateDiff 生成视频
- 本地工作流无限生成，不怕限制
- 教程见 [tutorials/COMFYUI_SETUP.md](./tutorials/COMFYUI_SETUP.md)

### 4. AI 配音

使用 TTS 工具生成角色配音：
- 按台词逐条生成
- 导出为 MP3 + FLAC 双格式
- 按角色分目录管理
- 细节见 [tutorials/VOICE_DUBBING.md](./tutorials/VOICE_DUBBING.md)

### 5. 视频制作

- ComfyUI + AnimateDiff 生成过场动画
- 部分视频用 **Banana** 生成
- 注意：字节跳动即梦的人脸处理目前有限制，主要用其他方案

### 6. 游戏开发（WebGAL 引擎）

用 [WebGAL](https://github.com/OpenWebGAL/WebGAL) 开源引擎组装：
- 用 WebGAL Script 写剧本（scene/\*.txt）
- 挂载立绘、背景、配音、视频
- 配置选项分支和好感度变量
- WebGAL 语法参考 [tutorials/WEBGAL_ENGINE.md](./tutorials/WEBGAL_ENGINE.md)

### 7. 全部资源汇总

| 阶段 | 工具 | 产出 |
|------|------|------|
| 剧本 | Markdown | 50+ 文档在 `docs/story/` |
| 生图 | 即梦 / Banana | 立绘 110+ 张、背景 90+ 张 |
| 本地调优 | ComfyUI + SD | 批量精修、视频生成 |
| 配音 | TTS | 500+ 条配音（按角色分目录）|
| 视频 | AnimateDiff | 7 个过场视频 |
| 引擎 | WebGAL | 完整交互游戏 |
| 三视图 | AI 生成 | 6 角色三视图模板 |

以上所有素材和工具都收录在本仓库中，无需额外下载即可查阅。

## 注意事项

### AI 生图
- **即梦**（字节跳动）：人脸生成有限制，适合背景/道具
- **Banana**：在线生图/视频，无限制
- **ComfyUI**：本地部署 Stable Diffusion，推荐 [啦啦啦的小黄瓜](https://space.bilibili.com/219572544) 教程

### AI 配音
- 使用 TTS 工具生成，导出 MP3/FLAC 双格式
- 本仓库已附批量转换脚本 `tools/scripts/`

### 视频生成
- ComfyUI + AnimateDiff 本地生成过场动画
- 部分用 Banana 生成

### 版权
- 角色原型为现实人物，同人创作仅供学习交流
- 游戏引擎 [WebGAL](https://github.com/OpenWebGAL/WebGAL) 基于 MIT 协议开源

## 技术栈
- **引擎**：[WebGAL](https://github.com/OpenWebGAL/WebGAL)（开源 MIT 协议）
- **脚本**：WebGAL Script（文本文档语法，记事本即可编写）
- **分辨率**：1920x1080
- **运行环境**：浏览器 / WebGAL Terre 编辑器

## 项目文件结构

```
GITHUBOPEN/
├── README.md                 # 本文件 - 项目全景
│
├── game/                     # 游戏主体（WebGAL）
│   ├── config.json           # 游戏配置
│   ├── scene/                # 剧本文件（.txt）
│   ├── figure/               # 角色立绘（111+ 张）
│   ├── background/           # 背景图片（90+ 张）
│   ├── audio/                # 音频文件（BGM）
│   ├── bgm/                  # 背景音乐（5 首）
│   ├── vocal/                # 角色配音（100+ 条）
│   ├── video/                # 过场视频（7 个）
│   ├── CG/                   # CG 图片
│   ├── sfx/                  # 音效
│   └── gui/                  # UI 资源（字体等）
│
├── assets/                   # 素材总汇
│   ├── README.md             # 素材索引说明
│   ├── in-game/              # 游戏内使用的素材
│   │   ├── figures/          # 立绘原文件
│   │   ├── backgrounds/      # 背景原文件
│   │   ├── vocals/           # 配音原文件
│   │   ├── cg/               # CG 原文件
│   │   └── items/            # 道具素材
│   └── extra/                # 额外素材（未直接入游戏的）
│       ├── raw-images/       # AI 生成原图
│       ├── chapter-materials/# 各章节人物素材
│       ├── three-view/       # 三视图模板
│       └── audio/            # 额外音频
│
├── tools/                    # 工具汇
│   ├── webgal-editor/        # WebGAL 可视化编辑器
│   └── scripts/              # 辅助脚本（音频格式转换等）
│
├── tutorials/                # 教程
│   ├── IMAGE_GENERATION.md   # AI 生图教程
│   ├── VOICE_DUBBING.md      # 配音制作教程
│   ├── VIDEO_GENERATION.md   # 视频生成教程
│   ├── WEBGAL_ENGINE.md      # WebGAL 引擎使用指南
│   └── COMFYUI_SETUP.md      # ComfyUI 本地部署教程
│
└── docs/                     # 文档资料
    ├── story/                # 剧本 / 剧情文档
    └── game-design/          # 游戏设计文档
```

## 素材来源

- **背景图片**：AI 绘画生成（即梦 / 其他工具）
- **角色立绘**：AI 绘画生成
- **配音**：AI 语音合成 + 部分人工处理
- **背景音乐**：网络素材
- **游戏引擎**：[WebGAL](https://github.com/OpenWebGAL/WebGAL)（开源 MIT 协议）

## 致谢

- [WebGAL](https://github.com/OpenWebGAL/WebGAL) - 优秀的开源 Web 视觉小说引擎，本项目基于此构建
- [啦啦啦的小黄瓜 (B站)](https://space.bilibili.com/219572544) - ComfyUI 本地部署教程参考
- Banana - AI 生图/视频工具
- 即梦 - AI 生图工具
- 感谢所有提供素材和灵感的创作者

## 许可证

本项目为同人创作，仅供学习交流使用。
角色原型为现实人物，请注意肖像权和版权问题。

游戏引擎 [WebGAL](https://github.com/OpenWebGAL/WebGAL) 基于 MIT 协议开源。

---

**版本**: 0.2.0
**状态**: 开发中
**GitHub**: https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media

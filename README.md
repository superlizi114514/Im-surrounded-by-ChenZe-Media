# 完蛋！我被陈泽传媒包围了

> 一款基于 [WebGAL](https://github.com/OpenWebGAL/WebGAL) 引擎的 Galgame 恋爱视觉小说
>
> 角色原型：陈泽（抖音博主）

## 项目导航

| 目录 | 说明 |
|------|------|
| [game/](./game/) | **游戏主体** - WebGAL 引擎完整游戏（可直接运行） |
| [assets/](./assets/) | **素材总汇** - 游戏内素材 + 额外素材（原图、三视图、语音等） |
| [tools/](./tools/) | **工具汇** - 开发工具、脚本合集 |
| [tutorials/](./tutorials/) | **教程** - 生图、配音、视频制作、引擎使用等教程 |
| [docs/](./docs/) | **文档** - 剧本、游戏设计文档 |

## 项目简介

玩家扮演陈泽的青梅竹马王女开（王妍），在陈泽传媒公司与陈泽、黑白、老崔、刘军等人展开一段暧昧纠缠的恋爱故事。

### 核心设定

- **你**：陈泽的青梅竹马，从小一起长大，暧昧不清
- **陈泽**：公司老板 / 主播，有领导力、重情义
- **黑白（陈志涛）**：当家主播，高冷型男
- **老崔（崔立伟）**：公司元老，幽默接地气
- **刘朔军**：黑白介绍的朋友，可靠温暖的前辈
- **展虎（王展虎）**：情敌/同学，强势直接

### 游戏截图

游戏基于 WebGAL 引擎，1920x1080 分辨率，完整支持：
- 选项分支 / 好感度系统
- 配音 / BGM / 音效
- 视频插入（动画过场）
- 条件分支选择

## 制作过程一览（不用下载也能看）

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

## 当前进度

### 已完成

- [x] 序章剧本（网吧偷钱 - 2012 年夏天，初二）
- [x] 第一章剧本（甜宠线 / 分手线分支）
- [x] 第二章剧本（展虎第一章）
- [x] 大量角色立绘 / 背景素材
- [x] 完整配音库（陈泽、黑白、展虎、崔立伟、刘军、配角等）
- [x] 游戏视频素材
- [x] 三视图模板

### 开发中

- [ ] 后续章节剧本
- [ ] UI 界面美化
- [ ] 更多 CG 图片
- [ ] 完善配音覆盖

## 快速开始

### WebGAL 版（推荐）

```bash
# 1. 安装 WebGAL Terre 编辑器
# 下载：https://github.com/OpenWebGAL/WebGAL_Terre/releases

# 2. 打开编辑器，导入 game/ 目录

# 3. 点击运行即可游玩
```

或者直接打开 `game/index.html` 在浏览器中运行。

### 技术栈

- **引擎**：[WebGAL](https://github.com/OpenWebGAL/WebGAL)（开源 Web 视觉小说引擎）
- **脚本**：WebGAL Script（文本文档语法）
- **分辨率**：1920x1080

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

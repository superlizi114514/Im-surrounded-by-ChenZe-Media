# ComfyUI 本地部署教程

## 什么是 ComfyUI？

ComfyUI 是一个基于节点的 Stable Diffusion 工作流工具。相比 WebUI 的整合界面，ComfyUI 以流程图（节点图）的方式组织 AI 生图流程，控制更精细、效率更高。

## 安装步骤

```
第 1 步：安装 Python 3.10+
   → 官网下载 python.org
   → 安装时勾选 "Add Python to PATH"

第 2 步：安装 Git
   → 官网下载 git-scm.com

第 3 步：克隆 ComfyUI
   → git clone https://github.com/comfyanonymous/ComfyUI.git
   → cd ComfyUI

第 4 步：安装依赖
   → pip install -r requirements.txt

第 5 步：下载模型
   → 将 checkpoint 模型放到 models/checkpoints/
   → 推荐：Anything V5、Counterfeit（二次元风格）

第 6 步：启动
   → python main.py
   → 浏览器打开 http://127.0.0.1:8188
```

## 本项目常用工作流

### 1. 文生图（角色立绘）

```
Checkpoint → 正面 Prompt → 负面 Prompt → Empty Latent Image
                                                      ↓
                                            KSampler → VAE Decode → Save Image
```

### 2. 图生图（基于已有图做变体）

```
Load Image → VAE Encode → KSampler → VAE Decode → Save Image
```

### 3. ControlNet（控制角色姿势）

```
Load Image（姿势参考图）
    ↓
OpenPose Pose 提取姿势
    ↓
ControlNet Apply → KSampler → 输出
```

### 4. AnimateDiff（视频生成）

```
Checkpoint + Prompt → ControlNet → AnimateDiff → VAE Decode → Save Video
```

## 推荐模型

| 模型 | 用途 | 下载 |
|------|------|------|
| Anything V5 | 二次元立绘 | Hugging Face |
| Counterfeit | 高质量二次元 | Hugging Face |
| Realistic Vision | 写实背景 | CivitAI |
| 各种 LoRA | 角色/风格控制 | CivitAI |

## 教程推荐

B 站 [啦啦啦的小黄瓜](https://space.bilibili.com/219572544) 有完整的 ComfyUI 入门到进阶系列：
1. 安装与配置
2. 基础文生图
3. 图生图
4. ControlNet 姿势控制
5. AnimateDiff 视频
6. 角色一致性控制

## 本项目的 ComfyUI 应用

- 角色立绘批量生成（同一角色多表情）
- 背景图生成与变体
- 过场动画视频
- CG 图片
- 三视图模板生成

## 常见问题

**Q: 显存不够？**
A: 降低图片尺寸（512x768），使用 --lowvram 参数启动

**Q: 出图慢？**
A: 减少步数（20→15），使用 xformers 加速

**Q: 角色不像？**
A: 训练或下载角色 LoRA，配合 ControlNet

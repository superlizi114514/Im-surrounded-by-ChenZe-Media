# AI 生图教程

## 推荐工具

### 1. 即梦（在线）

字节跳动出品的 AI 生图工具。

- 优点：上手快，中文友好，生成质量高
- 缺点：部分人脸生成有限制
- 适用场景：背景图、道具图、场景概念图

### 2. Banana（在线/API）

- 适用场景：角色立绘生成、批量生图
- 支持多种模型

### 3. ComfyUI（本地部署）- 推荐

Stable Diffusion 本地工作流工具，功能最强。

- **教程参考**：B 站 [啦啦啦的小黄瓜](https://space.bilibili.com/219572544)
- 优点：完全本地运行，无限制，可自定义工作流
- 适合：精细化控制角色一致性、批量出图

## 角色立绘 Prompt 参考

### 陈泽（少年版）

```
young chinese boy, 14 years old, school uniform,
short black hair, cute face, shy expression,
anime style, full body portrait,
white background, clean lines,
--ar 9:16
```

### 场景 - 东北小城

```
small county town in Heilongjiang, China,
early 2010s, old residential buildings,
summer, green trees, cloudy sky,
photorealistic style, game background,
--ar 16:9
```

## 本项目的生图流程

1. 使用即梦/Banana 生成初版图片
2. 筛选符合角色设定的图片
3. Photoshop 后期处理（去背景、调色、加特效）
4. 导出为 PNG 格式（立绘需透明背景）
5. 按命名规范放入 `figure/` 或 `background/` 目录

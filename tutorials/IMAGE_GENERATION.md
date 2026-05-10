# AI 生图教程

## 推荐工具对比

| 工具 | 类型 | 优点 | 缺点 | 适合 |
|------|------|------|------|------|
| **即梦** | 在线 | 中文友好、上手快、质量高 | 人脸有限制 | 背景/道具/场景概念图 |
| **Banana** | 在线/API | 无限制、多模型 | 英文界面 | 角色立绘/批量生图 |
| **ComfyUI** | 本地 | 完全可控、无限生成 | 需配置环境 | 精细控制/批量/视频 |

## 角色立绘 Prompt 参考

### 陈泽（少年版 2012 年）

```
young chinese boy, 14 years old, school uniform,
short black hair, cute face, shy expression,
anime style, full body portrait, white background,
clean lines, --ar 9:16
```

### 陈泽（青年主播版）

```
young chinese man, 20 years old, media company CEO,
business casual outfit, confident smile,
anime style, half body portrait --ar 9:16
```

### 东北小城背景

```
small county town in Heilongjiang, China,
early 2010s, old residential buildings, summer,
green trees, cloudy sky, game background,
photorealistic --ar 16:9
```

### 道具素材

```
red landline telephone, old style, isolated on white,
product photography style, high detail
```

## 本项目的生图全流程

```
第 1 步：确定需求
   → 需要什么角色/场景/道具
   → 参考 docs/story/ 中的剧本确定场景
   
第 2 步：编写 Prompt
   → 参考上面的模板
   → 调整关键词直到出图满意
   
第 3 步：批量生成
   → 同一 Prompt 生成 4-8 张
   → 筛选最符合的 1-2 张
   
第 4 步：后期处理
   → Photoshop 去背景（立绘需透明 PNG）
   → 调色统一风格
   → 裁剪到 1920x1080（背景）或合适尺寸（立绘）
   
第 5 步：命名规范
   → 立绘：角色名_表情.png（如：陈泽_开心.png）
   → 背景：场景名_时间.png（如：教室_白天.png）
   
第 6 步：放入游戏目录
   → 立绘 → game/figure/
   → 背景 → game/background/
```

## 角色一致性技巧

1. **固定 Seed 值**：用相同 Prompt + Seed 生成同角色多表情
2. **图生图**：先用一张满意的图为基础，微调生成变体
3. **ControlNet**：用 OpenPose 控制姿势，Canny 控制边缘
4. **LoRA**：训练角色 LoRA 实现高度一致性

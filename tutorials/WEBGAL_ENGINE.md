# 萌新也能看懂的 WebGAL 引擎完全入门手册

## 0. 先记住一句话

> **WebGAL 剧本就是一个 `.txt` 文本文件。你会打字，就会写 WebGAL 剧本。**

不需要编程基础，不需要英语，用记事本打开，打字，保存，放进编辑器——你的 Galgame 就跑起来了。

---

## 1. 下载工具（5 分钟）

### 1.1 WebGAL Terre 编辑器

这是官方图形化编辑器，用来管理项目和运行游戏。

- 下载：https://github.com/OpenWebGAL/WebGAL_Terre/releases
- 下载 `WebGAL_Terre-win32-x64.zip`，解压，双击 `WebGAL_Terre.exe` 启动

### 1.2 准备图片

你需要两类图片（没有就先用纯色图代替）：

- **立绘**：角色 PNG 图，建议 800×1600（放在 `game/figure/`）
- **背景**：场景 PNG/JPG 图，必须 1920×1080（放在 `game/background/`）

---

## 2. 新建项目（3 分钟）

```
第 1 步：新建一个文件夹，比如叫 my-game/
第 2 步：在里面新建 config.json（复制下面内容）
第 3 步：在里面新建 scene/ 文件夹
第 4 步：在 scene/ 里新建 start.txt
第 5 步：用 WebGAL Terre 打开 my-game/ 目录
```

### config.json（复制这个）

```json
{
  "gameName": "我的第一个游戏",
  "version": "0.1.0",
  "resolution": { "width": 1920, "height": 1080 }
}
```

---

## 3. 写下你的第一句台词（立刻见效）

打开 `scene/start.txt`，输入：

```webgal
; 分号开头是注释，游戏里不会显示
; ========== 我的第一个剧本 ==========

label:start;

changeBg:black;

:你好，世界。;
:这就是我的第一个游戏。;

:做游戏，其实很简单对吧？;

end;
```

保存，在编辑器里点 ▶ 运行。黑屏上依次显示三句话——你的第一个 WebGAL 游戏诞生了。

---

## 4. 语法速查（所有常用命令）

### 4.1 显示文字

```webgal
; 旁白（冒号开头）
:这是旁白，用来讲剧情。;

; 角色对话
陈泽:"今天天气真好。";

; 角色对话 + 配音
陈泽:"你好啊。" -chenze_hello.mp3;
```

### 4.2 背景

```webgal
changeBg:教室.png;              ; 切换背景
changeBg:教室.png -next;        ; 等玩家点击后再切
changeBg:black;                 ; 黑屏（常用于转场）
```

### 4.3 立绘

```webgal
changeFigure:陈泽_正常.png -center;   ; 居中显示
changeFigure:陈泽_开心.png -left;     ; 左边显示
changeFigure:陈泽_愤怒.png -right;    ; 右边显示
changeFigure:none -center;            ; 隐藏居中立绘
changeFigure:none -all;               ; 隐藏全部立绘
```

### 4.4 选项分支

```webgal
; 基础选项
choose:去教室:label_classroom|去网吧:label_netbar;

; 带条件的好感度选项
; (显示条件)[启用条件]->选项文字:跳转标签
choose:(love>=10)[love>=5]->抱住他:love_route|离开:cold_route;
```

### 4.5 变量（好感度等）

```webgal
setVar:love=0;              ; 初始化
setVar:love=love+5;         ; 加 5
:【好感度：{love}】;         ; 在屏幕上显示变量值
```

### 4.6 跳转和标签

```webgal
label:my_label;             ; 定义一个标签（跳转目标）
jumpLabel:my_label;         ; 跳转到标签
```

### 4.7 音乐和音效

```webgal
bgm:bgm_01.mp3;             ; 播放背景音乐
bgm:none;                   ; 停止
playEffect:敲门声.mp3;      ; 播放音效
```

### 4.8 视频

```webgal
playVideo:开场动画.mp4 -volume=100;        ; 播放视频
playVideo:名场面.mp4 -skipOff;             ; 不允许跳过
```

### 4.9 场景切换

```webgal
changeScene:chapter1.txt#scene1;  ; 跳到另一章的某个标签
end;                               ; 结束当前场景
```

### 4.10 等待

```webgal
wait:3000;        ; 等待 3 秒（3000 毫秒）
wait:click;       ; 等待玩家点击
```

---

## 5. 完整范例：写一个有分支的小故事

```webgal
; ========== 放学后 ==========

label:start;

changeBg:学校门口.png;

:放学铃响了。;

changeFigure:陈泽_正常.png -center;

陈泽:"一起回家吗？";

choose:好啊:label_yes|我还有事:label_no;

label:label_yes;
setVar:love=love+5;
:【好感度 +5 | 当前：{love}】;
changeFigure:陈泽_开心.png -center;
陈泽:"嘿嘿，走吧。";
jumpLabel:end_story;

label:label_no;
changeFigure:陈泽_低落.png -center;
陈泽:"哦...那明天见。";
jumpLabel:end_story;

label:end_story;
changeBg:black;
:这条路，不知道还能走多久。;
end;
```

---

## 6. 不用 AI 的纯手动工作流

| 步骤 | 怎么做 | 工具 |
|------|--------|------|
| 写剧本 | 打开记事本，打字 | 记事本/VSCode |
| 做立绘 | 手绘或拼素材 | Photoshop/SAI/画图 |
| 做背景 | 拍照/手绘/免费素材站 | bg-mania.jp |
| 做配音 | 麦克风录音 | Audacity（免费） |
| 做音乐 | 免费音乐网站 | DOVA-S / 魔王魂 |
| 做视频 | 剪辑软件剪 | 剪映 / Premiere |
| 跑游戏 | 拖入 Terre 编辑器 | WebGAL Terre |

**你不需要 AI，你只需要想一个故事。**

---

## 7. 常见问题排查

| 问题 | 原因 | 解决 |
|------|------|------|
| 立绘不显示 | 不是 PNG 或路径不对 | 换成 PNG，检查文件名 |
| 背景变形 | 不是 1920×1080 | 剪裁到 1920×1080 |
| 语音不播放 | 不是 MP3 或路径不对 | 用 MP3 格式 |
| 编辑器打不开项目 | 选了子目录 | 选 `my-game/` 根目录，不是 `scene/` |
| 中文显示方块 | 缺少中文字体 | `gui/font/` 放入中文字体 |

---

## 8. 本项目实际剧本参考

本仓库 `game/scene/` 下就是实际运行的剧本，直接用记事本打开看：

- `start.txt` — 序章（网吧偷钱、楼下偶遇、QQ头像、KTV邀约、表白）
- `diyizhang.txt` — 第一章（甜宠线）
- `dierzhang.txt` — 第二章
- `zhanhudiyizhang.txt` — 展虎线第一章

打开它，对照上面的语法参考，你就能看懂整个游戏是怎么写的。

---

## 9. 下一步

1. 新建你的第一个 `.txt` 剧本
2. 用 AI 生成几张立绘和背景放进去
3. 跑起来，截图发朋友圈
4. 继续写剧情，添加配音和 BGM
5. 做到一半迷茫了？回来看这个项目找灵感

> **做游戏最好的时机是十年前，其次是现在。打开记事本，打字吧。**

---

- WebGAL 官方文档：https://docs.openwebgal.com/
- WebGAL GitHub：https://github.com/OpenWebGAL/WebGAL
- 本仓库 Wiki：https://github.com/superlizi114514/Im-surrounded-by-ChenZe-Media/wiki

# WebGAL 引擎使用指南

## 关于 WebGAL

[WebGAL](https://github.com/OpenWebGAL/WebGAL) 是一款开源、基于 Web 的视觉小说引擎，MIT 协议。无需编程基础，用记事本就能写游戏。

- 官方文档：https://docs.openwebgal.com/
- Terre 编辑器：https://github.com/OpenWebGAL/WebGAL_Terre
- 本仓库已含完整文档镜像见 `docs/webgal-docs/`

---

## 第一章：手动编写第一个剧本（不用 AI）

WebGAL 使用 `.txt` 文本文件写剧本，任何文本编辑器（记事本/VSCode）都能写。

### 1.1 文件结构

```
game/
├── config.json        # 游戏配置
├── scene/
│   ├── start.txt     # 序章剧本
│   └── chapter1.txt  # 第一章剧本
├── figure/           # 立绘图片
├── background/       # 背景图片
├── vocal/            # 配音音频
└── bgm/              # 背景音乐
```

### 1.2 最简剧本模板

新建一个 `mygame.txt`，写入以下内容：

```webgal
; 分号后面是注释，不会被执行
; ============================================
; 我的第一个 WebGAL 游戏
; ============================================

; 标签定义（入口点）
label:start;

; 设置背景为黑色
changeBg:black;

; 旁白（前面加冒号）
:欢迎来到我的第一个 WebGAL 游戏！;

; 显示角色立绘（居中）
changeFigure:角色名.png -center;

; 角色说话
陈泽:"你好啊！" -语音文件.mp3;

; 隐藏立绘
changeFigure:none;

; 切换背景
changeBg:教室背景.png;

; 选项分支
choose:选项一:label1|选项二:label2;

; 定义标签
label:label1;
:你选了选项一。;
jumpLabel:end;

label:label2;
:你选了选项二。;
jumpLabel:end;

; 结束
label:end;
changeBg:black;
:游戏结束。;
end;
```

把 `mygame.txt` 放到 `game/scene/` 目录，用 WebGAL Terre 打开即可运行。

### 1.3 从头搭建项目的步骤

```
第 1 步：创建 game/ 文件夹
第 2 步：创建 config.json（见下方模板）
第 3 步：创建 scene/start.txt（写剧本）
第 4 步：放入立绘图片到 figure/
第 5 步：放入背景图片到 background/
第 6 步：用 WebGAL Terre 打开 game/ 目录
第 7 步：点击运行测试
```

### 1.4 config.json 模板

```json
{
  "gameName": "你的游戏名称",
  "version": "0.1.0",
  "resolution": {
    "width": 1920,
    "height": 1080
  },
  "performance": {
    "enableLazyLoad": true,
    "preloadSceneOnly": true,
    "imageCacheSize": 50
  }
}
```

---

## 第二章：手动编写剧本（完整语法手册）

### 2.1 对话系统

```webgal
; 旁白
:这是一段旁白文字。;

; 角色对话（带语音）
陈泽:"今天天气真好。" -chenze_hello.mp3;

; 角色对话（不带语音）
陈泽:"今天天气真好。";

; 带说话动作（动画）
陈泽:"我好开心啊！" -happy.mp3 -animation=bounce;
```

### 2.2 场景控制

```webgal
; 切换背景
changeBg:教室.png;
changeBg:教室.png -next;           ; 点击后切换
changeBg:black;                     ; 黑屏
changeBg:white -duration=2000;      ; 白屏（2 秒过渡）

; 章节切换
changeScene:chapter1.txt#scene1;    ; 切换到另一文件
callScene:chapter1.txt#scene1;      ; 调用后返回
```

### 2.3 立绘控制

```webgal
; 显示立绘
changeFigure:陈泽正常.png -center;
changeFigure:陈泽开心.png -left;
changeFigure:陈泽愤怒.png -right;

; 同时显示多个立绘
changeFigure:陈泽正常.png -left;
changeFigure:黑白微笑.png -right;

; 隐藏
changeFigure:none -left;
changeFigure:none -all;             ; 隐藏全部

; 立绘变换（位置、缩放）
changeFigure:陈泽.png -center -transform={"position":{"x":-200,"y":0}};
```

### 2.4 选项分支

```webgal
; 基础选项
choose:去教室:go_classroom|去网吧:go_netbar;

; 带好感度条件
; 语法：choose:(显示条件)[启用条件]->选项文字:目标标签;
choose:(chenze_fav>=10)[chenze_fav>=5]->走到他身边:route_1|离开:route_2;

; 多选项
choose:选项A:label_a|选项B:label_b|选项C:label_c|选项D:label_d;
```

### 2.5 变量系统

```webgal
; 设置变量
setVar:chenze_fav=0;
setVar:baihei_fav=10;

; 变量运算
setVar:chenze_fav=chenze_fav+5;
setVar:chenze_fav=chenze_fav-3;

; 显示变量值到屏幕
:【陈泽好感度：{chenze_fav}】;

; 条件跳转
choose:(chenze_fav>=10)[]->继续:good_ending|:bad_ending;
```

### 2.6 音视频

```webgal
; 背景音乐
bgm:music.mp3;                      ; 播放
bgm:music.mp3 -enter=10;            ; 淡入 10 秒
bgm:none;                           ; 停止
bgm:none -duration=2000;            ; 渐停 2 秒

; 音效
playEffect:关门声.mp3 -id=d00r;
playEffect:none -id=d00r;           ; 停止

; 视频
playVideo:开场动画.mp4 -volume=100;
playVideo:过场.mp4 -skipOff;        ; 不允许跳过
```

### 2.7 动画与特效

```webgal
; 内置动画
setAnimation:bounce;                ; 弹跳
setAnimation:fadeIn;                ; 淡入
setAnimation:shake;                 ; 震动

; 转场
setTransition:fade -duration=1000;  ; 淡入淡出
setTransition:slideLeft;            ; 左滑

; 滤镜
filmMode:oldFilm;                   ; 老电影滤镜
filmMode:shake;                     ; 抖动
filmMode:none;                      ; 关闭滤镜
```

### 2.8 流程控制

```webgal
; 标签定义
label:scene1;

; 跳转
jumpLabel:scene2;

; 等待
wait:2000;                          ; 等待 2 秒
wait:click;                         ; 等待点击

; 结束
end;                               ; 结束当前场景
```

---

## 第三章：本项目的剧本示例

### 3.1 好感度选项模板

```webgal
; 初始化
setVar:chenze_fav=0;

; 选项-增加好感度
choose:帮他说话:help_him|保持沉默:stay_silent;

label:help_him;
setVar:chenze_fav=chenze_fav+5;
:【陈泽好感度 +5 | 当前：{chenze_fav}】;
jumpLabel:next_scene;

label:stay_silent;
setVar:chenze_fav=chenze_fav-3;
:【陈泽好感度 -3 | 当前：{chenze_fav}】;
jumpLabel:next_scene;
```

### 3.2 条件路线分支

```webgal
; 根据好感度进入不同路线
choose:(chenze_fav>=10)[chenze_fav>=10]->牵手:good_route|转身离开:bad_route;

label:good_route;
陈泽:"我就知道你会选我。"
jumpLabel:chapter2;

label:bad_route;
陈泽:"...你走吧。"
end;
```

### 3.3 多场景切换

```webgal
; start.txt 结尾
choose:第一章（甜宠线）:chapter1_sweet|第一章（分手线）:chapter1_break;

label:chapter1_sweet;
changeScene:diyizhang.txt#scene1;

label:chapter1_break;
changeScene:dierzhang.txt#scene1;
```

---

## 第四章：不使用 AI 的纯手动工作流

| 步骤 | 工具 | 说明 |
|------|------|------|
| 写剧本 | 记事本/VSCode | 直接写 `.txt`，用分号注释 |
| 做立绘 | 绘画软件 | Photoshop/Clip Studio Paint/Sai |
| 做背景 | 素材网站/手绘 | 免费背景站：bg-mania.jp |
| 做配音 | 自己录制 | Audacity 录音+剪辑 |
| 做音乐 | 免费音乐网站 | DOVA-S、魔王魂 |
| 做视频 | 剪辑软件 | 剪映/Premiere/达芬奇 |
| 导入引擎 | WebGAL Terre | 拖入目录即可运行 |

完全不依赖 AI 也能做 Galgame，AI 只是加速素材生成。

---

## 第五章：调试技巧

```webgal
; 跳过开场直接进入某场景
changeScene:chapter2.txt#boss_fight;

; 快速测试好感度分支
setVar:chenze_fav=99;
choose:(chenze_fav>=10)[]->测试高好感分支:test_label;

; 查看当前变量值
showVars;
```

---

## 常见问题

**Q: 为什么立绘不显示？**
A: 检查图片格式是否为 PNG，路径是否正确，文件名是否有中文空格。

**Q: 语音不播放？**
A: 推荐使用 MP3 格式，检查路径是否和 `vocal/` 目录对应。

**Q: 选项条件不生效？**
A: 检查语法 `choose:(条件)[条件]->选项:标签;`，注意括号和箭头。

更多问题参考 WebGAL 官方文档或本仓库 `docs/webgal-docs/`。

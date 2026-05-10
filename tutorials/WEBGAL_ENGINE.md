# WebGAL 引擎使用指南

## 关于 WebGAL

[WebGAL](https://github.com/OpenWebGAL/WebGAL) 是一款开源、基于 Web 的视觉小说引擎，使用 MIT 协议开源。

- GitHub：https://github.com/OpenWebGAL/WebGAL
- 官方文档：https://docs.openwebgal.com/
- Terre 编辑器：https://github.com/OpenWebGAL/WebGAL_Terre

## 本项目的 WebGAL 文档镜像

本仓库 `/docs/webgal-docs/` 目录包含了 WebGAL 引擎的完整中文文档镜像，方便离线查阅。

## 基础语法

```webgal
// 更换背景
changeBg:背景图.png;

// 显示立绘
changeFigure:角色名.png -center;

// 隐藏立绘
changeFigure:none;

// 对话
角色名:"对话内容" -语音文件.mp3;

// 旁白
:旁白内容;

// 选项分支
choose:选项1:label1|选项2:label2;

// 跳转
jumpLabel:label1;

// 标签定义
label:label1;

// 切换场景
changeScene:场景文件.txt#场景标签;

// BGM
bgm:音乐.mp3;

// 音效
playEffect:音效.mp3 -id=effect1;

// 视频
playVideo:视频.mp4 -volume=100;

// 变量
setVar:变量名=值;

// 条件分支（用于 choose）
choose:条件表达式->选项:label;
```

## 本项目常用语法示例

```
// 条件好感度选择
choose:(showConditionVar>=10)[enableConditionVar>=10]->选项文本:目标标签;
```

更多详细语法请参考 WebGAL 官方文档或本仓库的文档镜像。

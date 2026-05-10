# 序章素材需求清单 - AI 绘画提示词（参考图工作流）

**版本**：v3.0（修正版）
**最后更新**：2026-03-27

---

## 核心工作流程

> **重要**：本工作流以**参考图为主，提示词为辅**。提示词只描述必要变化，角色外观完全依赖参考图。

```
步骤 1：用写实照片/手绘确定角色基准脸
    ↓
步骤 2：生成三视图（Character Sheet）存档
    ↓
步骤 3：后续生成都用图生图 + ControlNet
    ↓
步骤 4：用 Roop/ReActor 统一脸部
```

---

## 工具设置

### Stable Diffusion WebUI

| 设置项 | 推荐值 | 说明 |
|--------|--------|------|
| 采样器 | DPM++ 2M Karras | 稳定输出 |
| 步数 | 25-30 | 不需要太高 |
| CFG | 5-6 | 降低创意自由度 |
| 重绘幅度 | 0.3-0.5 | 图生图时使用 |
| ControlNet | Canny + OpenPose | 控制轮廓和姿势 |
| IP-Adapter | 权重 0.7-0.8 | 参考图权重 |

### Midjourney

```
--iw 2 --cref [参考图 URL] --cw 100
```
- `--iw 2`：图片权重最大
- `--cref`：角色参考
- `--cw 100`：完全参考角色特征

---

## 一、角色参考图生成

### 王女开（女主）

**参考图来源**：先找一张符合设定的真实照片作为基底

| 生成目标 | 极简提示词 |
|----------|-----------|
| **三视图** | `character sheet, three views, front side back, chinese school girl 14 years old, blue white tracksuit uniform, white background` |
| **面部基准** | `chinese girl 14 years old, medium black hair, neutral face, portrait, white background` |

**角色锁定特征**（靠参考图，不靠提示词）：
- 发型：黑色中长发（及肩）
- 服装：蓝白校服
- 体型：14 岁少女

---

### 陈泽（男主少年期）

**参考图来源**：先找一张符合设定的真实照片作为基底

| 生成目标 | 极简提示词 |
|----------|-----------|
| **三视图** | `character sheet, three views, front side back, chinese school boy 14 years old, blue white tracksuit uniform, white background` |
| **面部基准** | `chinese boy 14 years old, messy short black hair, rebel expression, portrait, white background` |

**角色锁定特征**（靠参考图，不靠提示词）：
- 发型：黑色短发略乱
- 服装：蓝白校服
- 体型：14 岁少年

---

### 王展虎（表哥）

**参考图来源**：先找一张符合设定的真实照片作为基底

| 生成目标 | 极简提示词 |
|----------|-----------|
| **三视图** | `character sheet, three views, front side back, chinese boy 17 years old, casual clothes, white background` |
| **面部基准** | `chinese boy 17 years old, short black hair, mature calm face, portrait, white background` |

**角色锁定特征**（靠参考图，不靠提示词）：
- 发型：黑色短发整齐
- 服装：休闲装
- 体型：17 岁青年

---

## 二、人物立绘（Figure）

> **使用说明**：以下所有立绘都必须**使用对应角色的参考图**进行图生图生成。提示词只描述表情/姿势变化。

### 2.1 王女开（女主）立绘

| 文件名 | 用途 | 图生图提示词（只描述变化） |
|--------|------|---------------------------|
| `wangyan_normal.png` | 默认立绘 | `standing, neutral expression, looking at viewer, white background` |
| `wangyan_smile.png` | 微笑立绘 | `standing, gentle smile, warm expression, looking at viewer, white background` |
| `wangyan_action_bend.png` | 弯腰捡包 | `bending down, picking up backpack, side view, white background` |
| `wangyan_sad.png` | 难过立绘 | `standing, looking down, teary eyes, sad expression, white background` |
| `wangyan_angry.png` | 生气立绘 | `standing, angry expression, frowning, determined look, white background` |

---

### 2.2 陈泽（男主）立绘

| 文件名 | 用途 | 图生图提示词（只描述变化） |
|--------|------|---------------------------|
| `chenze_angry.png` | 愤怒冲下楼 | `running pose, angry shouting, red eyes, emotional, white background` |
| `chenze_panicked.png` | 网吧慌乱 | `sitting at computer, panicked expression, wide eyes, sweating, white background` |
| `chenze_nervous.png` | 紧张害羞 | `standing, blushing, looking away, shy, nervous, white background` |
| `chenze_sad.png` | 失落无奈 | `standing, looking down, shoulders slumped, defeated, white background` |
| `chenze_walking_away.png` | 转身离开 | `back view, walking away, white background` |

---

### 2.3 王展虎（表哥）立绘

| 文件名 | 用途 | 图生图提示词（只描述变化） |
|--------|------|---------------------------|
| `wangzhanhu_normal.png` | 默认立绘 | `standing, calm expression, looking at viewer, white background` |
| `wangzhanhu_concerned.png` | 担心表情 | `standing, concerned expression, protective look, white background` |

---

### 2.4 其他角色

| 文件名 | 用途 | 完整提示词（一次性角色） |
|--------|------|-------------------------|
| `spirit_guy.png` | 精神小伙 | `chinese young man, spiky dyed hair, flashy clothes, standing, white background` |
| `grandma_silhouette.png` | 奶奶剪影 | `silhouette, elderly woman, angry posture, pointing, dark shadow` |

---

## 三、场景背景（Background）

> **使用说明**：场景建议用图生图，找类似的实景照片作为基底，提示词只描述场景类型和氛围。

### 3.1 室外场景

| 文件名 | 用途 | 极简提示词 |
|--------|------|-----------|
| `bg_building_outside.png` | 小区楼下白天 | `chinese residential building entrance, daytime, 2010s, old 5-6 floors, concrete staircase` |
| `bg_street_afternoon.png` | 下午街道 | `chinese county town street, afternoon, hot summer, old buildings, convenience store, 2010s` |
| `bg_street_light.png` | 路灯下夜晚 | `night, residential courtyard, single street light, warm yellow glow, trash can visible, 2010s` |
| `bg_school_playground.png` | 学校操场 | `chinese school playground, sports day, running track, afternoon sunlight` |
| `bg_trashcan_night.png` | 垃圾桶旁夜晚 | `night, courtyard corner, green metal trash can, dim lighting, concrete ground` |

---

### 3.2 室内场景

| 文件名 | 用途 | 极简提示词 |
|--------|------|-----------|
| `bg_netbar_inside.png` | 网吧内部 | `2012 chinese internet cafe, CRT monitors, dim lighting, neon signs, gamers` |
| `bg_home_phone.png` | 家里座机电话 | `2012 chinese living room, red landline phone on table, old furniture, CRT TV` |
| `bg_phone_message.png` | 手机短信界面 | `close-up, nokia flip phone screen, SMS interface, chinese text messages` |
| `bg_home_night.png` | 女主家夜晚 | `night, chinese girl bedroom, desk with homework, dim lamp, window with night sky` |

---

### 3.3 UI/地图

| 文件名 | 用途 | 极简提示词 |
|--------|------|-----------|
| `map_suiling.png` | 绥棱县地图 | `china map, heilongjiang highlighted, suiling county marked, simple infographic` |
| `qq_avatar_yan.png` | QQ 头像妍字 | `QQ avatar 2012, black square, white chinese character 妍，song typeface` |

---

## 四、物品道具（Items）

> **使用说明**：物品建议直接实拍或用现有素材，AI 生成难以控制细节。

| 文件名 | 用途 | 提示词/制作方式 |
|--------|------|----------------|
| `nike_backpack.png` | Nike 背包 | 实拍 + 抠图，或提示词：`mint green Nike backpack, product photo, white background` |
| `nokia_flipphone_taped.png` | 缠胶布手机 | 实拍 + 抠图（旧手机缠胶布） |
| `wallet_with_money.png` | 钱包露钞票 | 实拍 + 抠图（钱包 +100 元） |
| `snack_bag.png` | 零食袋 | 实拍 + 抠图（2010s 常见零食） |
| `empty_snack_bag.png` | 空零食袋 | 实拍 + 抠图 |

---

## 五、特殊 CG 场景

> **使用说明**：关键剧情 CG 可以用图生图，找类似构图的实景照片作为基底。

| 文件名 | 用途 | 极简提示词 |
|--------|------|-----------|
| `cg001_phone_break.png` | 摔手机瞬间 | `nokia flip phone mid-air, battery flying out, shattered, motion blur, indoor` |
| `cg002_netbar_discovery.png` | 网吧撞见 | `boy at internet cafe computer, wallet with money on table, girl at doorway` |
| `cg003_confession.png` | 路灯下表白 | `boy and girl under street light at night, boy blushing, romantic atmosphere` |
| `cg004_argument.png` | 争吵 + 王展虎 | `boy and girl arguing at night near trash can, older boy protecting girl` |

---

## 六、通用负面提示词

```
nsfw, lowres, bad anatomy, bad hands, text, watermark, signature, blur, deformed, disfigured, extra limbs, bad feet, cropped, low quality, jpeg artifacts
```

**注意**：写实风格需要去掉 `cartoon, anime, 3d, doll-like` 等负面词，让 AI 自由发挥写实感。

---

## 七、台词语音列表

### 第一幕

| 编号 | 台词 | 角色 | 情绪 |
|------|------|------|------|
| V001 | "操！" | 陈泽 | 愤怒爆发 |
| V002 | "你摔！有本事你别回这个家！" | 奶奶 | 愤怒怒吼 |

### 第二幕

| 编号 | 台词 | 角色 | 情绪 |
|------|------|------|------|
| V010 | "卧槽！" | 陈泽 | 惊慌 |
| V011 | "你...你怎么在这？！" | 陈泽 | 惊慌失措 |
| V012 | "求你了，别告诉我奶。" | 陈泽 | 恳求 |
| V013 | "我奶要是知道了，真能打死我。" | 陈泽 | 无奈恳求 |
| V014 | "我不会说的。" | 王女开 | 平静 |
| V015 | "以后别这样了。" | 王女开 | 认真 |
| V016 | "你...你人还挺好的。" | 陈泽 | 感激害羞 |

### 第七幕

| 编号 | 台词 | 角色 | 情绪 |
|------|------|------|------|
| V020 | "你最近...是不是躲着我？" | 王女开 | 委屈试探 |
| V021 | "你能不能别这么无理取闹？" | 陈泽 | 不耐烦 |
| V022 | "我不是在做事吗？" | 陈泽 | 烦躁 |
| V023 | "你要是这么想，我也没办法。" | 王女开 | 失望 |
| V024 | "女开，怎么了？" | 王展虎 | 关心 |
| V025 | "有人欺负你？" | 王展虎 | 保护性 |
| V026 | "行，我先送你回去。" | 王展虎 | 可靠 |

### 第八幕

| 编号 | 台词 | 角色 | 情绪 |
|------|------|------|------|
| V030 | "王女开，你什么意思？" | 陈泽 | 愤怒颤抖 |

### 甜宠线

| 编号 | 台词 | 角色 | 情绪 |
|------|------|------|------|
| V040 | "傻子。" | 王女开 | 宠溺 |
| V041 | "再忙也要记得回家。" | 王女开 | 温柔关心 |
| V042 | "嗯，知道了。" | 陈泽 | 感动 |

### 分手线

| 编号 | 台词 | 角色 | 情绪 |
|------|------|------|------|
| V050 | "陈泽，我们结束了。" | 王女开 | 决绝 |
| V051 | "你继续忙你的梦想，我...不奉陪了。" | 王女开 | 失望决绝 |
| V052 | "王女开，你..." | 陈泽 | 震惊 |
| V053 | "（拍了拍我的肩膀）走吧。" | 王展虎 | 轻声 |

---

## 八、音效列表

| 文件名 | 用途 | 制作方式 |
|--------|------|----------|
| `door_slam.mp3` | 陈泽摔门离家 | 音效库 |
| `grandma_shout.mp3` | 奶奶怒吼 | 配音 + 混响 |
| `chenze_shout.mp3` | 陈泽喊"操" | 配音 |
| `sms_notification.mp3` | 诺基亚短信铃 | 音效库 |

---

## 九、制作优先级检查表

### P0（必须）

- [ ] 王女开三视图参考图
- [ ] 陈泽三视图参考图
- [ ] 王展虎三视图参考图
- [ ] `wangyan_normal.png` - 女主默认
- [ ] `chenze_angry.png` - 陈泽愤怒
- [ ] `chenze_panicked.png` - 陈泽慌乱
- [ ] `wangzhanhu_normal.png` - 王展虎默认
- [ ] `bg_street_light.png` - 路灯下
- [ ] `bg_phone_message.png` - 手机短信

### P1（重要）

- [ ] `wangyan_smile.png` - 女主微笑
- [ ] `wangyan_action_bend.png` - 女主弯腰
- [ ] `chenze_nervous.png` - 陈泽紧张
- [ ] `wangzhanhu_concerned.png` - 王展虎担心
- [ ] 争吵相关台词语音

### P2（可选）

- [ ] `spirit_guy.png` - 精神小伙
- [ ] `bg_street_afternoon.png` - 下午街道

---

**文档结束**

# AI 绘画提示词清单

> 版本：v1.0
> 适用：Stable Diffusion / Midjourney / NovelAI 等

---

## 一、通用设置

### 基础参数建议

```
画面比例：--ar 16:9 (背景) / --ar 9:16 (立绘)
质量：--q 2 / high quality / masterpiece
风格：anime style / galgame style / Chinese anime style
```

### 通用正向提示词

```
masterpiece, best quality, highres, anime style,
Chinese game art, galgame, visual novel,
detailed eyes, detailed hair, soft lighting
```

### 通用负向提示词

```
lowres, bad anatomy, bad hands, text, watermark,
signature, blurry, ugly, duplicate, deformed,
mutated hands, missing fingers, extra digits
```

---

## 二、角色立绘提示词

### 陈泽·少年（初中时期）

```prompt
anime boy, 14 years old, Chinese,
messy black hair, rebellious look,
wearing school uniform or casual t-shirt,
neutral expression, standing pose,
white background, character sprite,
galgame style, detailed eyes, soft lighting

--ar 9:16 --nijiji 5
```

**表情变体**：
- **开心**：`smiling, happy, bright eyes`
- **生气**：`angry, frowning, intense gaze`
- **害羞**：`blushing, embarrassed, looking away`
- **难过**：`sad, depressed, downcast eyes`
- **专注**：`focused, serious, gaming expression`

---

### 陈泽·成年（主播时期）

```prompt
anime man, 25 years old, Chinese,
stylish black hair, mature look,
wearing trendy streetwear or streaming outfit,
confident expression, standing pose,
white background, character sprite,
galgame style, detailed eyes, professional lighting

--ar 9:16 --nijiji 5
```

**表情变体**：
- **开心**：`smiling confidently, charming`
- **认真**：`serious, deep gaze, proposal scene`
- **深情**：`romantic expression, soft eyes`
- **直播状态**：`streaming, talking to camera, energetic`

---

### 王女开（女主）·少年

```prompt
anime girl, 14 years old, Chinese,
long black hair or ponytail, pure look,
wearing middle school uniform or casual dress,
gentle expression, standing pose,
white background, character sprite,
galgame style, detailed eyes, soft lighting

--ar 9:16 --nijiji 5
```

**表情变体**：
- **开心**：`smiling sweetly, blushing`
- **难过**：`crying, sad, tears in eyes`
- **害羞**：`shy, blushing, looking down`
- **惊讶**：`surprised, shocked, wide eyes`

---

### 王女开（女主）·成年

```prompt
anime woman, 24 years old, Chinese,
long elegant black hair, mature look,
wearing office lady outfit or elegant dress,
calm expression, standing pose,
white background, character sprite,
galgame style, detailed eyes, professional lighting

--ar 9:16 --nijiji 5
```

**表情变体**：
- **开心**：`gentle smile, happy`
- **忧郁**：`melancholy, nostalgic, complex emotions`
- **幸福**：`bridal look, wedding dress, smiling`

---

### 黑白

```prompt
anime man, 23 years old, Chinese,
short black hair, cold expression,
wearing black streetwear, cool look,
standing pose, white background,
character sprite, galgame style,
detailed eyes, mysterious atmosphere

--ar 9:16 --nijiji 5
```

---

### 老崔

```prompt
anime man, 28 years old, Chinese,
casual hairstyle, friendly smile,
wearing casual clothes, humorous look,
standing pose, white background,
character sprite, galgame style

--ar 9:16 --nijiji 5
```

---

### 刘军

```prompt
anime man, 30 years old, Chinese,
mature hairstyle, reliable look,
wearing business casual, senior vibe,
standing pose, white background,
character sprite, galgame style

--ar 9:16 --nijiji 5
```

---

## 三、背景提示词

### 初中时期

#### 红蚂蚁网吧（内部）

```prompt
2010s Chinese internet cafe interior,
rows of gaming computers, neon lights,
smoky atmosphere, gaming chairs,
dim lighting, cyberpunk vibe,
detailed background, anime background art

--ar 16:9 --nijiji 5
```

#### 小区楼下·晚上

```prompt
Chinese residential area at night,
street lamp, small garden, benches,
summer evening, cicada, warm lighting,
anime background art, detailed, nostalgic

--ar 16:9 --nijiji 5
```

#### 家里客厅·晚上

```prompt
Chinese home living room at night,
simple furniture, old TV, family photo,
warm indoor lighting, 2010s style,
anime background art, detailed

--ar 16:9 --nijiji 5
```

#### 学校门口

```prompt
Chinese middle school gate, daytime,
students in uniform, school building,
trees, sunlight, anime background art,
detailed, nostalgic, 2010s style

--ar 16:9 --nijiji 5
```

---

### 成年时期

#### 咖啡店·内部

```prompt
modern coffee shop interior,
wooden tables, warm lighting,
large windows, coffee machine,
cozy atmosphere, anime background art,
detailed, romantic

--ar 16:9 --nijiji 5
```

#### 办公室·早上

```prompt
modern office interior, morning light,
desks, computers, bright atmosphere,
professional setting, anime background art,
detailed, clean

--ar 16:9 --nijiji 5
```

#### 直播间

```prompt
streaming room, gaming setup,
multiple monitors, LED lights,
microphone, gaming chair,
professional streamer room,
anime background art, detailed

--ar 16:9 --nijiji 5
```

#### 餐厅·高级

```prompt
upscale restaurant interior,
romantic lighting, candle on table,
fine dining, elegant atmosphere,
anime background art, detailed,
proposal scene background

--ar 16:9 --nijiji 5
```

#### 婚礼殿堂

```prompt
wedding hall, white flowers,
wedding arch, guests seating,
romantic decoration, soft lighting,
anime background art, detailed,
dreamy atmosphere

--ar 16:9 --nijiji 5
```

---

## 四、CG 事件插画提示词

### CG001：摔翻盖机

```prompt
anime scene, teenage boy throwing
old Nokia flip phone on floor,
phone breaking apart, battery flying,
angry expression, 2010s Chinese home,
dramatic lighting, emotional scene,
galgame CG, detailed, high quality

--ar 16:9 --nijiji 5
```

### CG002：楼下偶遇

```prompt
anime scene, teenage boy sitting
alone on garden bench at night,
wrapped in胶带 flip phone, messy hair,
sad expression, street lamp lighting,
summer night, cicada, emotional,
galgame CG, detailed

--ar 16:9 --nijiji 5
```

### CG003：网吧撞见

```prompt
anime scene, internet cafe,
teenage boy gaming at computer,
girl watching from doorway,
surprised expression, 2010s China,
dramatic lighting, galgame CG, detailed

--ar 16:9 --nijiji 5
```

### CG004：路灯下表白

```prompt
anime scene, teenage boy and girl
under street lamp at night,
boy confessing, blushing,
holding broken flip phone,
romantic lighting, summer night,
galgame CG, emotional, detailed

--ar 16:9 --nijiji 5
```

### CG005：凯尔 1103 分结算

```prompt
anime scene, gaming computer screen,
League of Legends Kayle victory,
score 1103 points displayed,
gaming room, LED lights,
dramatic achievement moment,
galgame CG, detailed, epic

--ar 16:9 --nijiji 5
```

### CG006：黑白玉佩视频

```prompt
anime scene, two streamers gaming together,
dual monitor setup, streaming room,
excited expression, victory moment,
chat overlay with "黑白玉佩",
galgame CG, detailed, energetic

--ar 16:9 --nijiji 5
```

### CG007：求婚

```prompt
anime scene, man kneeling with ring box,
upscale restaurant, romantic lighting,
woman surprised, emotional moment,
candle light, flowers,
galgame CG, detailed, romantic

--ar 16:9 --nijiji 5
```

### CG008：婚礼

```prompt
anime wedding scene, bride and groom,
wedding hall, white flowers,
guests watching, best man side,
romantic lighting, dreamy atmosphere,
galgame CG, detailed, beautiful

--ar 16:9 --nijiji 5
```

### CG009：扔书包事件

```prompt
anime scene, school girl throwing
school bag to boy, emotional moment,
sunset or night, dramatic lighting,
confession aftermath, galgame CG,
detailed, sad atmosphere

--ar 16:9 --nijiji 5
```

### CG010：重逢咖啡店

```prompt
anime scene, adult man and woman
meeting in coffee shop,
"long time no see" moment,
emotional expression, warm lighting,
galgame CG, detailed, nostalgic

--ar 16:9 --nijiji 5
```

---

## 五、特殊元素提示词

### 翻盖手机（诺基亚风格）

```prompt
old Nokia flip phone, 2010s mobile phone,
silver black color, cracked screen,
tape wrapped around, detailed product,
anime style prop
```

### 凯尔 1103 分结算界面

```prompt
League of Legends victory screen,
Kayle champion, KDA 12/0/3,
score 1103 displayed, golden rank,
gaming UI, anime style interface
```

### QQ 聊天界面（2012 风格）

```prompt
2010s QQ chat interface,
old style mobile QQ,
T9 keyboard, message bubbles,
anime style UI
```

---

## 六、风格化参数

### Midjourney 专用

```
--ar 16:9 (背景/CG)
--ar 9:16 (立绘)
--nijiji 5 (动漫风格)
--q 2 (高质量)
--style raw (更写实)
```

### Stable Diffusion 专用

**Checkpoint 推荐**：
- Anything V5
- Counterfeit V3
- MeinaMix
- AOM3 (Anime Obscure Master)

**LoRA 推荐**：
- `<lora:animeDetail:0.6>` - 增加细节
- `<lora:galgameStyle:0.8>` - Galgame 风格

**Prompt 写法**：
```prompt
(masterpiece, best quality:1.4),
(highres:1.2),
anime style, galgame,
[detailed prompt here]
```

---

## 七、批量生成建议

### 立绘批量生成

```
同一个种子，改表情关键词：
- seed: 12345
- 表情：smiling / angry / sad / blushing
```

### 背景批量生成

```
同一个构图，改时间：
- morning / afternoon / night
- 天气：sunny / cloudy / rainy
```

---

## 八、常见问题解决

### 问题：脸部崩坏
```
解决：加 `detailed face, perfect face`
负向：`bad face, deformed face`
```

### 问题：手部崩坏
```
解决：加 `detailed hands, perfect hands`
或避免手部特写
负向：`bad hands, missing fingers`
```

### 问题：风格不一致
```
解决：固定同一个 checkpoint/model
使用相同 seed 范围
```

---

## 九、优先生成清单

### 🔴 最高优先（用这些提示词先生成）

| 内容 | 提示词编号 |
|------|-----------|
| 陈泽少年立绘 | 二 -1 |
| 陈泽成年立绘 | 二 -2 |
| 女主成年立绘 | 二 -4 |
| 咖啡店背景 | 三 - 咖啡店 |
| 网吧背景 | 三 - 网吧 |
| 楼下路灯背景 | 三 - 小区楼下 |
| 路灯下表白 CG | 四 -CG004 |
| 1103 分 CG | 四 -CG005 |

---

**使用时根据具体 AI 工具调整参数。**

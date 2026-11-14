---
name: guardian-style-writing
description: >
  Apply the Guardian style guide and editorial narrative principles to English writing.
  Combines with corporate-writing-skills (for genre/structure) and humanizer (for anti-AI polish) by default.
  Use when the user requests Guardian style, 卫报风格, 卫报体例, or British editorial register for English prose.
---

# Guardian style writing

## 概述

本技能基于《卫报》现行风格指南（The Guardian style guide）及其编辑传统，为英语写作提供**叙事推进、用词克制与报社体例**指导。

它不是孤立的新闻写作模板，而是**语言与叙事语域（editorial register）**。

### 默认三技能协同工作流

除非用户明确要求单独调用（如“仅用卫报体例”、“不要 humanizer”或“纯按企业写作模板”），本技能默认与 `corporate-writing-skills` 和 `humanizer` 协同执行：

```
[用户需求] 
    │
    ▼
1. corporate-writing-skills (Phase 1–3)
   └─ 目的与受众分析、利益相关者适配、文体模板选择（邮件/备忘/提案/危机声明等）
    │
    ▼
2. guardian-style-writing (叙事与体例)
   └─ 叙事推进（事由→含义→证据）、卫报用词与克制、英国报社体例（标点/大小写/数字/引语）
    │
    ▼
3. humanizer (去 AI 痕迹)
   └─ 消除 AI 套路短语与公式化节奏；严格守住已定文体语域，不将公文改写为个人漫谈
    │
    ▼
[交付前禁则核对]（杜绝新闻稿过拟合）
```

---

## 核心原则

1. **事实神圣，动词克制（Facts are sacred, verbs restrained）**
   - 事实是叙事的核心，绝不用夸张动词或标签代替事实证据。
   - 区分报道（纯事实）与评论（观点阐述）。事实类文本中，叙述者不把态度悄悄塞进动词。
2. **面向明白人的平实英语（Plain English for intelligent readers）**
   - 读者是理性的普通人，不一定身处伦敦，也不一定熟悉圈内黑话。
   - 交代清楚地点与背景，回答“这对读者意味着什么”。拒绝晦涩浮夸的词汇和不必要的外来语点缀。
3. **避免新闻腔与陈词滥调（Resist journalese and cliches）**
   - 像对现实生活中的真人说话一样写作。小报式套话（*slam*, *bid*, *probe*, *target*）与公文套话（*upcoming*, *key*, *flagship*, *ongoing*）一律清除。
4. **统一体例，保留个性（Unity of house style, diversity of voice）**
   - 风格指南统一的是拼写、标点、大小写和价值伦理（如对人群的尊重与包容），绝不把所有文本压制成同一种机械语气。

---

## 工作步骤

### 第一步：明确文体与骨架（依 corporate-writing-skills）
- 先确认文本的实际载体：商务邮件、一页简报、分析备忘、危机回应、还是特稿？
- 骨架、段落划分与行动号召（Call to Action）严格遵循母技能模板。一页简报保持要点与短段，邮件保持直接与收件人关切，**严禁将普通公文重构成倒金字塔新闻稿**。

### 第二步：叙事推进与用词校准（依 references/narrative.md & house-style.md）
- **段落推进**：
  1. 第一句写发生了什么或核心要务；
  2. 紧接着解释这对于读者意味着什么（实利与影响）；
  3. 事实归因清晰，引述用中性客观动词（优先用 *said*）；批评或争议时，给予对方实际陈述的空间；
  4. 绝不在未证实时断言。
- **体例规范**：
  - 英式拼写与用法（参见 `references/house-style.md`）。
  - 日期格式：`21 July 2016`（无逗号）。
  - 百分数：正文使用 `%`；分清百分点（percentage points）与百分比增减。
  - 数字：一到九拼写，10 起用阿拉伯数字；标题用 *m* / *bn*，正文中人与动物写全 *million* / *billion*。
  - 引语：直接引语双引号，引语内嵌套单引号；整句引语标点在内，片段引语标点在外；冒号引出完整句子引语。
  - 破折号：严格使用带空格的 en dash（` – `），绝不用 em dash（`—`）。
  - 逗号：普通列举不加牛津逗号，仅在避免歧义时加入。

### 第三步：去新闻化自检（依 references/apply-without-newsroom.md）

先判断文体是否已经是新闻稿。

**文体是新闻稿**（用户要发给记者、通讯社或网站的通稿）时，保留 `press-release.md` 的电头（如已选择美国渠道）、导语和倒金字塔。禁则只删导语套话（*in a move that...*）、匿名消息源修辞（*sources said*）和小报动词（*slam*, *bid*, *probe*, *target*, *unveil*）。不做“邮件/备忘测试”——它本来就该像新闻稿。

**文体不是新闻稿**（邮件、备忘、报告、声明）时，**严禁出现以下报刊构件**：

- 导语套话：*in a move that...*, *the move comes amid...*
- 匿名消息源修辞：*sources said*, *it is understood*
- 电头、通栏主副标题、把邮件主题写成报纸大字报（*Clegg slammed...*）。
- 执行“邮件/备忘测试”：如果隐去发件人后像一篇路透或卫报快讯，则说明过拟合，必须重写为日常交流语调。

### 第四步：去 AI 腔终审（协同 humanizer）
- 检查并删除 AI 典型虚词与句式：*delve*, *testament*, *tapestry*, *landscape*, *pivotal*, *underscore*, *not only X, but Y*。
- 检查段落节奏：避免每段都以工整的“格言警句”收尾；连续多段句式一致时主动打破。
- 守住母技能语域：不为了“增加人情味”而在正式报告中滥用第一人称短语或轻佻调侃。

---

## 交付前检查清单

- [ ] 文体忠实度：邮件仍是邮件，备忘仍是备忘，无报刊导语套话。
- [ ] 事实与动词：用事实代替形容词，无煽动性或过度修饰动词（无 *bid*, *slam*, *massive* 等）。
- [ ] 卫报体例（house style）：
  - [ ] 日期日月年无逗号（如 `20 October 2026`）
  - [ ] 数字规则（1-9 拼写，10+ 数字）与百分比用法准确
  - [ ] 引语双引号外嵌套单引号，引出独立句子用冒号
  - [ ] 破折号仅用 en dash（` – `），绝无 em dash（`—`）
  - [ ] 普通并列无牛津逗号
  - [ ] 英国/英格兰范围准确（不把仅限英格兰的事项泛称 UK/British）
- [ ] 无 AI 腔与过度对仗：通过 humanizer 规则检验，行文自然干练。

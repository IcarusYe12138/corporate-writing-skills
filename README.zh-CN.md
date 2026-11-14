# Corporate Writing Skills

[English](README.md) | 简体中文 | [繁體中文](README.zh-TW.md)

![Format](https://img.shields.io/badge/Format-Agent%20Skill-2F2FE4?style=flat-square)
![Workflow](https://img.shields.io/badge/Workflow-Five--Phase-2F2FE4?style=flat-square)
![Bilingual](https://img.shields.io/badge/Bilingual-中文%20%7C%20English-2F2FE4?style=flat-square)
![Genres](https://img.shields.io/badge/Genres-8%20Templates-2F2FE4?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-2F2FE4?style=flat-square)

企业传播写作与审查技能套件：利益相关者分析、文体路由、原则化起草、四层修订——覆盖商务邮件、内部公告、新闻稿、商业提案、危机声明、C 层沟通、社交媒体文案与品牌故事。内置卫报体例英文语域与去 AI 腔终审，**clone 一次即可直接用**。

基于 [MIT 许可证](LICENSE) 发布。内置的 `humanizer` 采用 [Siqi Chen](https://github.com/blader/humanizer) 的 MIT 授权，原始许可证保留于 `skills/humanizer/LICENSE`。

`Corporate Writing Skills` 把企业写作当作**传播设计**，而非文字润色。顺序是固定的：目的 → 利益相关者 → 内容 → 语气。每个任务走五个阶段，唯一不能省的那一步，是决定"谁在读、读完要做什么"。

多数写作工具给你一个模板。这个技能给你一套决策流程。模板位于路由表的下游——技能先决定该用哪个模板，并在受众与目的未确定前拒绝动笔。

## 它做什么

- 打包三个可组合技能，一次安装、按固定顺序协同运行
- 通过明确的决策表，把任何企业写作任务路由到对应的文体模板
- 起草前执行受众分析（O1–O5），让语气由证据推导而非个人偏好
- 用权力-利益矩阵与逐群体写作画布处理多受众与危机场景
- 以五条原则约束初稿，并给出可执行的削弱词删除清单
- 按四层顺序修订（内容 → 结构 → 风格 → 校对），不混着改
- 把英文输出切到卫报编辑语域，但不改变底下的文体载体
- 最后一轮清除 AI 写作痕迹，同时守住已定语域
- 双语输出做"调适"而非"翻译"，并逐版本说明关键调适点

## 三个技能

| 技能 | 在流水线中的职责 | 来源 |
|---|---|---|
| `corporate-writing-skills` | 目的、受众、利益相关者适配、文体与结构、修订纪律 | 本仓库 |
| `guardian-style-writing` | 英文语域：叙事推进、用词克制、报社体例（标点、数字、引语） | 本仓库 |
| `humanizer` | 终审去 AI 腔：清除套路短语与公式化节奏，不压平语域 | [blader/humanizer](https://github.com/blader/humanizer)，MIT |

流水线是有序的，不是可选的：

```text
[需求]
   │
   ▼
1. corporate-writing-skills   Phase 1–3
   │  目的、受众、利益相关者分层、文体骨架
   ▼
2. guardian-style-writing     Phase 4，仅英文
   │  编辑语域、报社体例、去套话
   ▼
3. humanizer                  Phase 5
   │  去除 AI 痕迹，文体载体不变
   ▼
[交付前清单]
```

第 2、3 阶段只在输出英文时适用。中文输出走完第 1 阶段后直接进入四层修订。三个技能也都能单独使用——用 `--only` 只装其中一个。

## 为什么存在

企业写作的失败方式很固定：文字流畅、打磨精细，却不知道写给谁。一份声称"服务所有利益相关者"的声明，往往在信息细节上服务了财务与法律群体，对员工和客户只是修辞式提及。差距不在词汇，而在那个从未做出的决定——到底服务谁。

这个技能把这个决定显性化、可核查化。它还把 AI 参与当作治理问题而非风格问题：辅助表达、委托表达、虚构经历是三件不同的事，披露取决于适用规则与读者预期，而不只取决于事实是否准确、草稿是否有人审过。

## 工作流

1. **目的与受众** —— 先分类沟通目标（告知 / 说服 / 对话），再跑五个受众问题
2. **利益相关者适配** —— 按权力与利益分层；为每个关键群体单独写一段，而不是一份通用公告
3. **文体与结构** —— 路由到匹配的模板及其结构骨架
4. **原则化起草** —— 清晰优先、简洁、自信表达、可读性外观
5. **修订与自检** —— 四层顺序修订，再过交付前清单

高风险文本（提案、危机声明、对外公告）在 Phase 1 结束后先向用户确认受众与目的，避免整篇返工。

## 快速开始

```bash
# 1. 克隆仓库
git clone https://github.com/IcarusYe12138/corporate-writing-skills.git
cd corporate-writing-skills

# 2. 一键安装三个技能（默认目标：~/.agents/skills）
./install.sh

# 3. 确认
ls ~/.agents/skills
```

安装脚本会把 `corporate-writing-skills`、`guardian-style-writing`、`humanizer` 一并复制到你的 skills 目录。遇到同名目录时先备份而不是删除。

```bash
# 装到 Claude Code 的目录
./install.sh --target ~/.claude/skills

# 只装其中一个技能
./install.sh --only corporate-writing-skills

# 用软链接而不是复制，之后 git pull 就能同步更新
./install.sh --link
```

想手动安装也行——把 `skills/` 下的任意目录复制进 agent 的 skills 文件夹即可，没有依赖、没有构建步骤、没有包管理器。

```bash
cp -R skills/* ~/.agents/skills/
```

然后直接向 agent 提出写作需求。每个技能会按文体按需加载自己的 `references/`，你不需要自己把参考文件贴进上下文。

```text
为受影响客户、监管机构和媒体写一份数据泄露声明。
```

```text
把我们的乡村教育项目写成一页简报，用于寻找合作伙伴。
```

```text
写一份 150 词的决策简报给 CEO，主题是香港 AI 客服试点。
```

## 适用场景

- **危机沟通** —— 监管、客户、媒体各有独立信息与行动号召，而不是一份谁都不满意的通用公告
- **高管写作** —— 决策简报、董事会议案、CEO 公开信所需的 BLUF、FIIA 与建议四件套
- **新闻稿** —— 美联社体例、电头、5W 导语与 300–500 词篇幅，与品牌故事严格区分
- **提案与一页简报** —— 完整提案用七步框架，一页简报用六要素骨架
- **AI 时代的社交媒体** —— 三条发现路径、零点击价值、能过证据测试的 GEO 主张，以及区分"自愿倡导"与"借用信用"的员工发声判断
- **品牌叙事** —— 五要素与固定的主角/引导者角色分工，附四种命名过的失败模式
- **双语交付** —— 英式英语、港式繁体中文、大陆简体中文从同一份大纲并行调适

## 仓库结构

```text
corporate-writing-skills/
├── install.sh                  # 三个技能的一键安装脚本
├── skills/
│   ├── corporate-writing-skills/
│   │   ├── SKILL.md            # 五阶段工作流、文体路由表、交付清单
│   │   └── references/
│   │       ├── writing-principles.md      # 五条原则、削弱词、四层修订
│   │       ├── stakeholder-canvas.md      # PIM、显著性模型、写作画布、危机规则
│   │       ├── genre-templates.md         # 八种文体，从邮件到 ESG 叙事
│   │       ├── proposal-playbook.md       # 七步框架、一页原则
│   │       ├── press-release.md           # 结构、美联社体例、电头
│   │       ├── c-level-writing.md         # 三种模式、署名、BLUF、FIIA
│   │       ├── social-media-writing.md    # 发现路径、零点击、GEO、AI 披露
│   │       ├── brand-storytelling.md      # 五要素、英雄之旅、失败模式
│   │       └── guardian-extension.md      # 三技能如何分工
│   ├── guardian-style-writing/
│   │   ├── SKILL.md
│   │   └── references/
│   │       ├── house-style.md             # 标点、数字、大小写、引号
│   │       ├── narrative.md               # 叙事推进与克制
│   │       └── apply-without-newsroom.md  # 在新闻业之外使用该语域
│   └── humanizer/                         # MIT，作者 Siqi Chen
│       ├── SKILL.md
│       ├── LICENSE
│       ├── README.md
│       └── WARP.md
├── LICENSE
└── README.md / README.zh-CN.md / README.zh-TW.md
```

## 设计说明

**参考文件按需加载。** 每个 `SKILL.md` 承担工作流与路由表，参考文件承担文体级深度。Agent 只读任务需要的那一份。

**路由表是核心资产。** 知道危机声明不是新闻稿、品牌故事不是公司史，比任何风格规则清单都更能拦住糟糕的企业写作。

**事实从不虚构。** 缺失数据写成明确的 `[待填：XXX]` 占位符；模拟或练习场景必须标注。没有可追溯来源的数字按负债处理，而不是按论据处理。

**三个技能可以单独降级运行。** `guardian-style-writing` 与 `humanizer` 是英文路径上的增强项，打包进来是为了让一次 clone 就自足。如果只装了 `corporate-writing-skills`，五阶段工作流与四层修订照常运行，并在交付时说明未做卫报体例与去 AI 腔终审。

**内置代码保留原有许可。** `humanizer` 按作者 MIT 授权原样再分发，原始 `LICENSE` 完整保留。本仓库自己的 MIT 授权覆盖 `corporate-writing-skills` 与 `guardian-style-writing`。

## 备注

- 模板是结构性的，不是填空题。技能要求先做内容决策才肯起草。
- 双语输出从共享的信息大纲产生，绝不通过翻译已完成稿得到。
- 任何公告的内部版与对外版必须共享同一批事实与承诺。终测：如果内部简报明天被公开，对外版本是否仍然诚实？
- 卫报语域只作用于英文。不要给中文输出套英式拼写或 en dash，也不要在同一篇里混用美联社与卫报的日期格式。

## 致谢

- `humanizer` —— MIT，[Siqi Chen](https://github.com/blader/humanizer)。原样再分发，许可证完整保留。
- `guardian-style-writing` —— 为本套件撰写，取材自 [The Guardian style guide](https://www.theguardian.com/guardian-observer-style-guide-a)。
- `corporate-writing-skills` —— 为本套件撰写。

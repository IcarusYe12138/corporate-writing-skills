# Corporate Writing Skills

[English](README.md) | 简体中文 | [繁體中文](README.zh-TW.md)

![Format](https://img.shields.io/badge/Format-Agent%20Skill-2F2FE4?style=flat-square)
![Workflow](https://img.shields.io/badge/Workflow-Five--Phase-2F2FE4?style=flat-square)
![Bilingual](https://img.shields.io/badge/Bilingual-中文%20%7C%20English-2F2FE4?style=flat-square)
![Genres](https://img.shields.io/badge/Genres-8%20Templates-2F2FE4?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-2F2FE4?style=flat-square)

企业传播写作与审查技能：利益相关者分析、文体路由、原则化起草、四层修订——覆盖商务邮件、内部公告、新闻稿、商业提案、危机声明、C 层沟通、社交媒体文案与品牌故事。

基于 [MIT 许可证](LICENSE) 发布。

`Corporate Writing Skills` 把企业写作当作**传播设计**，而非文字润色。顺序是固定的：目的 → 利益相关者 → 内容 → 语气。每个任务走五个阶段，唯一不能省的那一步，是决定"谁在读、读完要做什么"。

多数写作工具给你一个模板。这个技能给你一套决策流程。模板位于路由表的下游——技能先决定该用哪个模板，并在受众与目的未确定前拒绝动笔。

## 它做什么

- 通过明确的决策表，把任何企业写作任务路由到对应的文体模板
- 起草前执行受众分析（O1–O5），让语气由证据推导而非个人偏好
- 用权力-利益矩阵与逐群体写作画布处理多受众与危机场景
- 以五条原则约束初稿，并给出可执行的削弱词删除清单
- 按四层顺序修订（内容 → 结构 → 风格 → 校对），不混着改
- 双语输出做"调适"而非"翻译"，并逐版本说明关键调适点

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

# 2. 安装到 agent 的 skills 目录
cp -R corporate-writing-skills ~/.agents/skills/

# 3. 确认技能可见
ls ~/.agents/skills/corporate-writing-skills/SKILL.md
```

然后直接向 agent 提出写作需求。技能会按文体按需加载 `references/`，你不需要自己把参考文件贴进上下文。

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

- `SKILL.md`：五阶段工作流、文体路由表、起草原则、交付清单
- `references/writing-principles.md`：五条原则、削弱词清单、四层修订流程
- `references/stakeholder-canvas.md`：权力-利益矩阵、显著性模型、写作画布、危机规则
- `references/genre-templates.md`：八种高频文体，从商务邮件到 ESG 叙事
- `references/proposal-playbook.md`：七步框架、一页原则、常见失败模式
- `references/press-release.md`：新闻稿结构、美联社体例、电头规范
- `references/c-level-writing.md`：三种模式、机构性署名、香港三层问责、BLUF 与 FIIA
- `references/social-media-writing.md`：发现路径、零点击、GEO、AI 披露、员工与 CEO 账号
- `references/brand-storytelling.md`：四个问题、五要素、英雄之旅、失败模式
- `references/guardian-extension.md`：与卫报体例英文语域协同的规则
- `LICENSE`：MIT

## 设计说明

**参考文件按需加载。** `SKILL.md` 承担工作流与路由表，八个参考文件承担文体级深度。Agent 只读任务需要的那一份。

**路由表是核心资产。** 知道危机声明不是新闻稿、品牌故事不是公司史，比任何风格规则清单都更能拦住糟糕的企业写作。

**事实从不虚构。** 缺失数据写成明确的 `[待填：XXX]` 占位符；模拟或练习场景必须标注。没有可追溯来源的数字按负债处理，而不是按论据处理。

**可选协同不是前置条件。** 技能可调用 `guardian-style-writing` 提供卫报英文语域、`humanizer` 做最后的去 AI 腔。两者都是增强项；五阶段工作流与四层修订在缺少它们时照常运行。

## 备注

- 模板是结构性的，不是填空题。技能要求先做内容决策才肯起草。
- 双语输出从共享的信息大纲产生，绝不通过翻译已完成稿得到。
- 任何公告的内部版与对外版必须共享同一批事实与承诺。终测：如果内部简报明天被公开，对外版本是否仍然诚实？

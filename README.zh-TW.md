# Corporate Writing Skills

[English](README.md) | [简体中文](README.zh-CN.md) | 繁體中文

![Format](https://img.shields.io/badge/Format-Agent%20Skill-2F2FE4?style=flat-square)
![Workflow](https://img.shields.io/badge/Workflow-Five--Phase-2F2FE4?style=flat-square)
![Bilingual](https://img.shields.io/badge/Bilingual-中文%20%7C%20English-2F2FE4?style=flat-square)
![Genres](https://img.shields.io/badge/Genres-8%20Templates-2F2FE4?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-2F2FE4?style=flat-square)

企業傳播寫作與審查技能：持份者分析、文體路由、原則化起草、四層修訂——涵蓋商務電郵、內部公告、新聞稿、商業提案、危機聲明、C 層溝通、社交媒體文案與品牌故事。

以 [MIT 授權條款](LICENSE) 發佈。

`Corporate Writing Skills` 把企業寫作視為**傳播設計**，而非文字潤飾。順序是固定的：目的 → 持份者 → 內容 → 語氣。每個任務走五個階段，唯一不能省的那一步，是決定「誰在讀、讀完要做甚麼」。

多數寫作工具給你一個範本。這個技能給你一套決策流程。範本位於路由表的下游——技能先決定該用哪個範本，並在受眾與目的未確定前拒絕動筆。

## 它能做甚麼

- 透過明確的決策表，把任何企業寫作任務路由到對應的文體範本
- 起草前執行受眾分析（O1–O5），讓語氣由證據推導而非個人偏好
- 以權力-利益矩陣與逐群體寫作畫布處理多受眾與危機場景
- 以五條原則約束初稿，並提供可執行的削弱詞刪除清單
- 按四層順序修訂（內容 → 結構 → 風格 → 校對），不混著改
- 雙語輸出做「調適」而非「翻譯」，並逐版本說明關鍵調適點

## 為何存在

企業寫作的失敗方式很固定：文字流暢、打磨精細，卻不知道寫給誰。一份聲稱「服務所有持份者」的聲明，往往在資訊細節上服務了財務與法律群體，對員工和客戶只是修辭式提及。差距不在詞彙，而在那個從未做出的決定——到底服務誰。

這個技能把這個決定顯性化、可核查化。它還把 AI 參與當作治理問題而非風格問題：輔助表達、委託表達、虛構經歷是三件不同的事，披露取決於適用規則與讀者預期，而不只取決於事實是否準確、草稿是否有人審過。

## 工作流程

1. **目的與受眾** —— 先分類溝通目標（告知 / 說服 / 對話），再跑五個受眾問題
2. **持份者適配** —— 按權力與利益分層；為每個關鍵群體單獨寫一段，而不是一份通用公告
3. **文體與結構** —— 路由到匹配的範本及其結構骨架
4. **原則化起草** —— 清晰優先、簡潔、自信表達、可讀性外觀
5. **修訂與自檢** —— 四層順序修訂，再過交付前清單

高風險文本（提案、危機聲明、對外公告）在 Phase 1 結束後先向使用者確認受眾與目的，避免整篇返工。

## 快速開始

```bash
# 1. 複製倉庫
git clone https://github.com/IcarusYe12138/corporate-writing-skills.git

# 2. 安裝到 agent 的 skills 目錄
cp -R corporate-writing-skills ~/.agents/skills/

# 3. 確認技能可見
ls ~/.agents/skills/corporate-writing-skills/SKILL.md
```

然後直接向 agent 提出寫作需求。技能會按文體按需載入 `references/`，你不需要自己把參考檔案貼進上下文。

```text
為受影響客戶、監管機構和媒體寫一份資料外洩聲明。
```

```text
把我們的鄉村教育項目寫成一頁簡報，用於尋找合作夥伴。
```

```text
寫一份 150 字的決策簡報給 CEO，主題是香港 AI 客服試點。
```

## 適用場景

- **危機溝通** —— 監管、客戶、媒體各有獨立資訊與行動號召，而不是一份誰都不滿意的通用公告
- **高管寫作** —— 決策簡報、董事會議案、CEO 公開信所需的 BLUF、FIIA 與建議四件套
- **新聞稿** —— 美聯社體例、電頭、5W 導語與 300–500 字篇幅，與品牌故事嚴格區分
- **提案與一頁簡報** —— 完整提案用七步框架，一頁簡報用六要素骨架
- **AI 時代的社交媒體** —— 三條發現路徑、零點擊價值、能過證據測試的 GEO 主張，以及區分「自願倡導」與「借用信用」的員工發聲判斷
- **品牌敘事** —— 五要素與固定的主角/引導者角色分工，附四種命名過的失敗模式
- **雙語交付** —— 英式英語、港式繁體中文、大陸簡體中文從同一份大綱並行調適

## 倉庫結構

- `SKILL.md`：五階段工作流程、文體路由表、起草原則、交付清單
- `references/writing-principles.md`：五條原則、削弱詞清單、四層修訂流程
- `references/stakeholder-canvas.md`：權力-利益矩陣、顯著性模型、寫作畫布、危機規則
- `references/genre-templates.md`：八種高頻文體，從商務電郵到 ESG 敘事
- `references/proposal-playbook.md`：七步框架、一頁原則、常見失敗模式
- `references/press-release.md`：新聞稿結構、美聯社體例、電頭規範
- `references/c-level-writing.md`：三種模式、機構性署名、香港三層問責、BLUF 與 FIIA
- `references/social-media-writing.md`：發現路徑、零點擊、GEO、AI 披露、員工與 CEO 帳號
- `references/brand-storytelling.md`：四個問題、五要素、英雄之旅、失敗模式
- `references/guardian-extension.md`：與衛報體例英文語域協同的規則
- `LICENSE`：MIT

## 設計說明

**參考檔案按需載入。** `SKILL.md` 承擔工作流程與路由表，八個參考檔案承擔文體級深度。Agent 只讀任務需要的那一份。

**路由表是核心資產。** 知道危機聲明不是新聞稿、品牌故事不是公司史，比任何風格規則清單都更能攔住糟糕的企業寫作。

**事實從不虛構。** 缺失資料寫成明確的 `[待填：XXX]` 佔位符；模擬或練習場景必須標註。沒有可追溯來源的數字按負債處理，而不是按論據處理。

**可選協同不是前置條件。** 技能可調用 `guardian-style-writing` 提供衛報英文語域、`humanizer` 做最後的去 AI 腔。兩者都是增強項；五階段工作流程與四層修訂在缺少它們時照常運行。

## 備註

- 範本是結構性的，不是填空題。技能要求先做內容決策才肯起草。
- 雙語輸出從共享的資訊大綱產生，絕不透過翻譯已完成稿得到。
- 任何公告的內部版與對外版必須共享同一批事實與承諾。終測：如果內部簡報明天被公開，對外版本是否仍然誠實？

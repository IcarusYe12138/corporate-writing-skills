# Corporate Writing Skills

[English](README.md) | [简体中文](README.zh-CN.md) | 繁體中文

![Format](https://img.shields.io/badge/Format-Agent%20Skill-2F2FE4?style=flat-square)
![Workflow](https://img.shields.io/badge/Workflow-Five--Phase-2F2FE4?style=flat-square)
![Bilingual](https://img.shields.io/badge/Bilingual-中文%20%7C%20English-2F2FE4?style=flat-square)
![Genres](https://img.shields.io/badge/Genres-8%20Templates-2F2FE4?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-2F2FE4?style=flat-square)

企業傳播寫作與審查技能套件：持份者分析、文體路由、原則化起草、四層修訂——涵蓋商務電郵、內部公告、新聞稿、商業提案、危機聲明、C 層溝通、社交媒體文案與品牌故事。內建衛報體例英文語域，以及**中英雙語**的去 AI 腔終審，clone 一次即可直接用。

以 [MIT 授權條款](LICENSE) 發佈。其中兩個技能來自他人：`humanizer` 為 [Siqi Chen](https://github.com/blader/humanizer) 的 MIT 項目，`humanizer-zh` 為 [歸藏](https://github.com/op7418/Humanizer-zh) 的 MIT 項目。兩份授權均隨各自副本完整保留。

`Corporate Writing Skills` 把企業寫作視為**傳播設計**，而非文字潤飾。順序是固定的：目的 → 持份者 → 內容 → 語氣。每個任務走五個階段，唯一不能省的那一步，是決定「誰在讀、讀完要做甚麼」。

多數寫作工具給你一個範本。這個技能給你一套決策流程。範本位於路由表的下游——技能先決定該用哪個範本，並在受眾與目的未確定前拒絕動筆。

## 它能做甚麼

- 打包四個可組合技能，一次安裝、按固定順序協同運行
- 透過明確的決策表，把任何企業寫作任務路由到對應的文體範本
- 起草前執行受眾分析（O1–O5），讓語氣由證據推導而非個人偏好
- 以權力-利益矩陣與逐群體寫作畫布處理多受眾與危機場景
- 以五條原則約束初稿，並提供可執行的削弱詞刪除清單
- 按四層順序修訂（內容 → 結構 → 風格 → 校對），不混著改
- 把英文輸出切到衛報編輯語域，但不改變底下的文體載體
- 最後一輪**中英文各自**去除 AI 寫作痕跡，各自用對應語言的規則
- 雙語輸出做「調適」而非「翻譯」，並逐版本說明關鍵調適點

## 四個技能

| 技能 | 在流水線中的職責 | 來源 |
|---|---|---|
| `corporate-writing-skills` | 目的、受眾、持份者適配、文體與結構、修訂紀律 | 本倉庫 |
| `guardian-style-writing` | 英文語域：敘事推進、用詞克制、報社體例（標點、數字、引語） | 本倉庫 |
| `humanizer` | 去 AI 腔終審，英文 | [blader/humanizer](https://github.com/blader/humanizer)，MIT |
| `humanizer-zh` | 去 AI 腔終審，中文 | [op7418/Humanizer-zh](https://github.com/op7418/Humanizer-zh)，MIT |

流水線按**輸出語言**分叉：

```text
[需求]
   │
   ▼
① corporate-writing-skills ── Phase 1–3
   │  目的、受眾、持份者分層、文體骨架
   │
   ├──────────── 英文 ─────────────┐
   │                               │
   ▼                               │
② guardian-style-writing ── Phase 4│
   │  編輯語域、報社體例            │
   ▼                               │
③ humanizer ── Phase 5             │
   │  去除英文 AI 痕跡              │
   └──────────────┬────────────────┘
                  │
   ┌──────────────┴───────────────┐
   │                              │
   ▼（僅中文輸出）                 ▼
④ humanizer-zh ── Phase 5     [交付前清單]
   │  去除中文 AI 痕跡
   ▼
[交付前清單]
```

衛報語域只作用於英文，所以中文輸出跳過第 ② 步，直接進入自己的終審。**兩個 humanizer 絕不能交叉使用**：英文關於破折號與被動語態的規則對中文沒有意義，中文關於三段式與否定式排比的規則也攔不住英文套話。

四個技能也都能單獨使用——用 `--only` 只裝其中一個。

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
cd corporate-writing-skills

# 2. 一鍵安裝四個技能（預設目標：~/.agents/skills）
./install.sh

# 3. 確認
ls ~/.agents/skills
```

安裝腳本會把 `corporate-writing-skills`、`guardian-style-writing`、`humanizer`、`humanizer-zh` 一併複製到你的 skills 目錄。遇到同名目錄時先備份而不是刪除。

```bash
# 裝到 Claude Code 的目錄
./install.sh --target ~/.claude/skills

# 只裝其中一個技能
./install.sh --only corporate-writing-skills

# 用符號連結而不是複製，之後 git pull 就能同步更新
./install.sh --link
```

想手動安裝也行——把 `skills/` 下的任意目錄複製進 agent 的 skills 資料夾即可，沒有依賴、沒有建置步驟、沒有套件管理員。

```bash
cp -R skills/* ~/.agents/skills/
```

然後直接向 agent 提出寫作需求。每個技能會按文體按需載入自己的 `references/`，你不需要自己把參考檔案貼進上下文。

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

```text
corporate-writing-skills/
├── install.sh                  # 四個技能的一鍵安裝腳本
├── skills/
│   ├── corporate-writing-skills/
│   │   ├── SKILL.md            # 五階段工作流程、文體路由表、交付清單
│   │   └── references/
│   │       ├── writing-principles.md      # 五條原則、削弱詞、四層修訂
│   │       ├── stakeholder-canvas.md      # PIM、顯著性模型、寫作畫布、危機規則
│   │       ├── genre-templates.md         # 八種文體，從電郵到 ESG 敘事
│   │       ├── proposal-playbook.md       # 七步框架、一頁原則
│   │       ├── press-release.md           # 結構、美聯社體例、電頭
│   │       ├── c-level-writing.md         # 三種模式、署名、BLUF、FIIA
│   │       ├── social-media-writing.md    # 發現路徑、零點擊、GEO、AI 披露
│   │       ├── brand-storytelling.md      # 五要素、英雄之旅、失敗模式
│   │       └── guardian-extension.md      # 各技能如何分工
│   ├── guardian-style-writing/
│   │   ├── SKILL.md
│   │   └── references/
│   │       ├── house-style.md             # 標點、數字、大小寫、引號
│   │       ├── narrative.md               # 敘事推進與克制
│   │       └── apply-without-newsroom.md  # 在新聞業之外使用該語域
│   ├── humanizer/                         # MIT，Siqi Chen —— 英文去 AI 腔
│   │   ├── SKILL.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── WARP.md
│   │   └── BUNDLED.md                     # 上游位址與更新方式
│   └── humanizer-zh/                      # MIT，歸藏 —— 中文去 AI 腔
│       ├── SKILL.md
│       ├── LICENSE
│       ├── README.md
│       └── BUNDLED.md                     # 上游位址與更新方式
├── LICENSE
└── README.md / README.zh-CN.md / README.zh-TW.md
```

## 設計說明

**參考檔案按需載入。** 每個 `SKILL.md` 承擔工作流程與路由表，參考檔案承擔文體級深度。Agent 只讀任務需要的那一份。

**路由表是核心資產。** 知道危機聲明不是新聞稿、品牌故事不是公司史，比任何風格規則清單都更能攔住糟糕的企業寫作。

**事實從不虛構。** 缺失資料寫成明確的 `[待填：XXX]` 佔位符；模擬或練習場景必須標註。沒有可追溯來源的數字按負債處理，而不是按論據處理。

**協同技能可以單獨降級運行。** `guardian-style-writing` 與兩個 humanizer 都是增強項，打包進來是為了讓一次 clone 就自足。如果只裝了 `corporate-writing-skills`，五階段工作流程與四層修訂照常運行，並在交付時說明未做衛報體例與去 AI 腔終審。

**內建程式碼保留原有授權。** `humanizer` 與 `humanizer-zh` 均按作者 MIT 授權原樣再分發，原始 `LICENSE` 完整保留，並附 `BUNDLED.md` 標註上游與更新路徑。本倉庫自己的 MIT 授權覆蓋 `corporate-writing-skills` 與 `guardian-style-writing`。

## 備註

- 範本是結構性的，不是填空題。技能要求先做內容決策才肯起草。
- 雙語輸出從共享的資訊大綱產生，絕不透過翻譯已完成稿得到。
- 任何公告的內部版與對外版必須共享同一批事實與承諾。終測：如果內部簡報明天被公開，對外版本是否仍然誠實？
- 衛報語域只作用於英文。不要給中文輸出套英式拼寫或 en dash，也不要在同一篇裡混用美聯社與衛報的日期格式。

## 致謝

- `humanizer` —— MIT，[Siqi Chen](https://github.com/blader/humanizer)。原樣再分發，授權完整保留。
- `humanizer-zh` —— MIT，[歸藏](https://github.com/op7418/Humanizer-zh)，為 `blader/humanizer` 的中文譯本，並參考 [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop)。原樣再分發，授權完整保留。
- `guardian-style-writing` —— 為本套件撰寫，取材自 [The Guardian style guide](https://www.theguardian.com/guardian-observer-style-guide-a)。
- `corporate-writing-skills` —— 為本套件撰寫。

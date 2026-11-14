# Corporate Writing Skills

English | [简体中文](README.zh-CN.md) | [繁體中文](README.zh-TW.md)

![Skills](https://img.shields.io/badge/Format-Agent%20Skill-2F2FE4?style=flat-square)
![Workflow](https://img.shields.io/badge/Workflow-Five--Phase-2F2FE4?style=flat-square)
![Bilingual](https://img.shields.io/badge/Bilingual-中文%20%7C%20English-2F2FE4?style=flat-square)
![Genres](https://img.shields.io/badge/Genres-8%20Templates-2F2FE4?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-2F2FE4?style=flat-square)

A bundled agent-skill suite for corporate and organisational communication: stakeholder analysis, genre routing, principled drafting, and four-layer revision across eight recurring genres — with Guardian-style English register and anti-AI polish in both English and Chinese included, so one clone is enough.

Released under the [MIT License](LICENSE). Two bundled skills come from other authors: `humanizer` is MIT by [Siqi Chen](https://github.com/blader/humanizer), and `humanizer-zh` is MIT by [歸藏](https://github.com/op7418/Humanizer-zh). Both licences are preserved alongside their copies.

`Corporate Writing Skills` treats corporate writing as **communication design**, not prose polish. The order is fixed: purpose → stakeholders → content → tone. Every task runs through five phases, and the phase you cannot skip is the one that decides who is reading and what they need to do.

Most writing tools give you a template. This one gives you a decision procedure. Templates are downstream of the routing table — the skill decides which template applies, and refuses to draft before the audience and purpose are settled.

## What It Does

- Bundles four composable skills that install together and run as one pipeline
- Routes any corporate writing task to the right genre template through an explicit decision table
- Applies audience analysis (O1–O5) before drafting, so tone follows from evidence rather than taste
- Handles multi-stakeholder and crisis scenarios with a power-interest matrix and a per-audience writing canvas
- Enforces a five-principle drafting standard with a concrete hedge-word deletion list
- Runs revisions in four ordered layers (content → structure → style → proofreading) instead of mixing them
- Switches English output to a Guardian-style editorial register without changing the genre underneath
- Strips AI-writing tells in a final pass in **both English and Chinese**, each with language-specific rules
- Produces bilingual output as adaptation rather than translation, with per-variant notes on what changed and why

## The Four Skills

| Skill | Role in the pipeline | Source |
|---|---|---|
| `corporate-writing-skills` | Purpose, audience, stakeholder adaptation, genre and structure, revision discipline | This repository |
| `guardian-style-writing` | English register: narrative progression, restraint, house style (punctuation, numbers, quotes) | This repository |
| `humanizer` | Final anti-AI pass, English | [blader/humanizer](https://github.com/blader/humanizer), MIT |
| `humanizer-zh` | Final anti-AI pass, Chinese | [op7418/Humanizer-zh](https://github.com/op7418/Humanizer-zh), MIT |

The pipeline branches by output language:

```text
[request]
   │
   ▼
① corporate-writing-skills ── Phases 1–3
   │  purpose, audience, stakeholder layers, genre skeleton
   │
   ├──────────── English ─────────────┐
   │                                  │
   ▼                                  │
② guardian-style-writing ── Phase 4   │
   │  editorial register, house style│
   ▼                                  │
③ humanizer ── Phase 5                │
   │  remove English AI tells        │
   │                                  │
   └──────────────┬───────────────────┘
                  │
   ┌──────────────┴───────────────┐
   │                              │
   ▼  (Chinese output only)       ▼
④ humanizer-zh ── Phase 5      [pre-delivery checklist]
   │  remove Chinese AI tells
   ▼
[pre-delivery checklist]
```

Guardian register is English-only, so Chinese output skips stage 2 and goes straight to its own anti-AI pass. Never cross the two humanizers: English rules about em dashes and passive voice do not apply to Chinese, and Chinese rules about 三段式 and 否定式排比 do not catch English filler.

Each skill also works standalone — pass `--only` to install one.

## Why It Exists

Corporate writing fails in a predictable way: the text is fluent, polished, and addressed to nobody in particular. A statement that "serves all stakeholders" often serves the finance and legal groups in its detail while mentioning employees and customers only in rhetoric. The gap is not vocabulary — it is the missing decision about who is being served.

This skill makes that decision explicit and checkable. It also treats AI involvement as a governance question rather than a style question: assisted expression, delegated expression, and fabricated experience are three different things, and disclosure depends on applicable rules and reader expectation — not merely on whether the facts are accurate or a human reviewed the draft.

## Workflow

1. **Purpose and audience** — classify the goal (inform / persuade / converse), then run the five audience questions
2. **Stakeholder adaptation** — layer groups by power and interest; write a separate paragraph per critical group instead of one generic notice
3. **Genre and structure** — route to the matching template and its structural skeleton
4. **Principled drafting** — clarity first, concision, confident expression, readable appearance
5. **Revision and self-check** — four ordered layers, then the pre-delivery checklist

For high-stakes texts (proposals, crisis statements, public announcements), confirm audience and purpose with the user after Phase 1 rather than risking a full rewrite.

## Quick Start

```bash
# 1. Clone the repository
git clone https://github.com/IcarusYe12138/corporate-writing-skills.git
cd corporate-writing-skills

# 2. Install all four skills (default target: ~/.agents/skills)
./install.sh

# 3. Verify
ls ~/.agents/skills
```

The installer copies `corporate-writing-skills`, `guardian-style-writing`, `humanizer`, and `humanizer-zh` into your skills directory. It backs up anything it would overwrite instead of deleting it.

```bash
# Install into Claude Code's directory instead
./install.sh --target ~/.claude/skills

# Install just one skill
./install.sh --only corporate-writing-skills

# Symlink instead of copy, so `git pull` updates the installed skills
./install.sh --link
```

Prefer doing it by hand? Copy any directory from `skills/` into your agent's skills folder — no dependencies, no build step, no package manager.

```bash
cp -R skills/* ~/.agents/skills/
```

Then ask the agent for the text you need. Each skill loads its `references/` on demand based on the genre, so you do not need to paste reference files into context yourself.

```text
Write a data-breach statement for affected customers, regulators, and media.
```

```text
Turn our rural education project into a one-page brief for a prospective partner.
```

```text
Draft a 150-word decision memo to the CEO on a Hong Kong AI customer-service pilot.
```

## Use Cases

- **Crisis communication** — separate messages for regulators, customers, and media, each with its own call to action, instead of one notice that satisfies none
- **Executive writing** — BLUF, FIIA, and the four-part proposal anatomy for decision briefs, board papers, and CEO letters
- **Press releases** — AP style, datelines, 5W ledes, and the 300–500 word default, kept distinct from brand storytelling
- **Proposals and one-pagers** — a seven-step framework for full proposals and a six-element skeleton for the one-page brief
- **Social media in the AI era** — discovery paths, zero-click value, GEO claims that survive an evidence test, and employee-advocacy questions that separate voluntary advocacy from borrowed credibility
- **Brand narrative** — five elements and a fixed hero/guide role assignment, with four named failure modes
- **Bilingual delivery** — British English, Hong Kong traditional Chinese, and Mainland simplified Chinese adapted in parallel from one outline

## Repository Structure

```text
corporate-writing-skills/
├── install.sh                  # one-command installer for all four skills
├── skills/
│   ├── corporate-writing-skills/
│   │   ├── SKILL.md            # five-phase workflow, genre routing table, checklist
│   │   └── references/
│   │       ├── writing-principles.md      # five principles, hedge words, four-layer revision
│   │       ├── stakeholder-canvas.md      # PIM, salience model, writing canvas, crisis rules
│   │       ├── genre-templates.md         # eight genres, email to ESG narrative
│   │       ├── proposal-playbook.md       # seven-step framework, one-page rule
│   │       ├── press-release.md           # structure, AP style, datelines
│   │       ├── c-level-writing.md         # three modes, authorship, BLUF, FIIA
│   │       ├── social-media-writing.md    # discovery paths, zero-click, GEO, AI disclosure
│   │       ├── brand-storytelling.md      # five elements, hero's journey, failure modes
│   │       └── guardian-extension.md      # how the skills divide the work
│   ├── guardian-style-writing/
│   │   ├── SKILL.md
│   │   └── references/
│   │       ├── house-style.md             # punctuation, numbers, caps, quotes
│   │       ├── narrative.md               # narrative progression and restraint
│   │       └── apply-without-newsroom.md  # using the register outside journalism
│   ├── humanizer/                         # MIT, by Siqi Chen — English anti-AI pass
│   │   ├── SKILL.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── WARP.md
│   │   └── BUNDLED.md                     # upstream and update path
│   └── humanizer-zh/                      # MIT, by Guizang — Chinese anti-AI pass
│       ├── SKILL.md
│       ├── LICENSE
│       ├── README.md
│       └── BUNDLED.md                     # upstream and update path
├── LICENSE
└── README.md / README.zh-CN.md / README.zh-TW.md
```

## Design Notes

**Reference files load on demand.** Each `SKILL.md` holds the workflow and routing table; the reference files hold genre-specific depth. An agent reads only what the task needs.

**The routing table is the core artefact.** Knowing that a crisis statement is not a press release, and that a brand story is not a company history, prevents more bad corporate writing than any list of style rules.

**Facts are never invented.** Missing data becomes an explicit `[待填：XXX]` placeholder. Simulated or practice scenarios must be labelled as such. Numbers without a traceable source are treated as a liability, not as support.

**The pipelined skills degrade cleanly.** `guardian-style-writing` and both humanizers are enhancements, bundled here so that one clone is self-sufficient. If you install only `corporate-writing-skills`, the five-phase workflow and the four-layer revision still run; the skill notes in delivery that no Guardian or anti-AI pass was applied.

**Bundled code keeps its own licence.** `humanizer` and `humanizer-zh` are redistributed unmodified under their authors' MIT licences, with the original `LICENSE` files intact and `BUNDLED.md` noting upstream and update paths. This repository's own MIT licence covers `corporate-writing-skills` and `guardian-style-writing`.

## Notes

- Templates are structural, not fill-in-the-blank. The skill requires content decisions before it will draft.
- Bilingual output is produced from a shared information outline, never by translating a finished draft.
- The internal and external versions of any announcement must share the same facts and commitments. The final test: if the internal brief were published tomorrow, would the external version still be honest?
- The Guardian register applies to English only. Do not apply British spelling or en-dash conventions to Chinese output, and do not mix AP and Guardian date formats in the same document.

## Credits

- `humanizer` — MIT, [Siqi Chen](https://github.com/blader/humanizer). Redistributed unmodified with its licence intact.
- `humanizer-zh` — MIT, [歸藏](https://github.com/op7418/Humanizer-zh), a Chinese translation of `blader/humanizer` drawing on [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop). Redistributed unmodified with its licence intact.
- `guardian-style-writing` — authored for this bundle, drawing on [The Guardian style guide](https://www.theguardian.com/guardian-observer-style-guide-a).
- `corporate-writing-skills` — authored for this bundle.

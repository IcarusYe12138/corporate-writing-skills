# Corporate Writing Skills

English | [简体中文](README.zh-CN.md) | [繁體中文](README.zh-TW.md)

![Skills](https://img.shields.io/badge/Format-Agent%20Skill-2F2FE4?style=flat-square)
![Workflow](https://img.shields.io/badge/Workflow-Five--Phase-2F2FE4?style=flat-square)
![Bilingual](https://img.shields.io/badge/Bilingual-中文%20%7C%20English-2F2FE4?style=flat-square)
![Genres](https://img.shields.io/badge/Genres-8%20Templates-2F2FE4?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-2F2FE4?style=flat-square)

A skill for corporate and organisational communication: stakeholder analysis, genre routing, principled drafting, and four-layer revision — for emails, announcements, press releases, proposals, crisis statements, C-level briefs, social posts, and brand narratives.

Released under the [MIT License](LICENSE).

`Corporate Writing Skills` treats corporate writing as **communication design**, not prose polish. The order is fixed: purpose → stakeholders → content → tone. Every task runs through five phases, and the phase you cannot skip is the one that decides who is reading and what they need to do.

Most writing tools give you a template. This one gives you a decision procedure. Templates are downstream of the routing table — the skill decides which template applies, and refuses to draft before the audience and purpose are settled.

## What It Does

- Routes any corporate writing task to the right genre template through an explicit decision table
- Applies audience analysis (O1–O5) before drafting, so tone follows from evidence rather than taste
- Handles multi-stakeholder and crisis scenarios with a power-interest matrix and a per-audience writing canvas
- Enforces a five-principle drafting standard with a concrete hedge-word deletion list
- Runs revisions in four ordered layers (content → structure → style → proofreading) instead of mixing them
- Produces bilingual output as adaptation rather than translation, with per-variant notes on what changed and why

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

# 2. Install into your agent's skills directory
cp -R corporate-writing-skills ~/.agents/skills/

# 3. Verify the skill is visible
ls ~/.agents/skills/corporate-writing-skills/SKILL.md
```

Then ask the agent for the text you need. The skill loads `references/` on demand based on the genre, so you do not need to paste the reference files into context yourself.

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

- `SKILL.md`: five-phase workflow, genre routing table, drafting principles, delivery checklist
- `references/writing-principles.md`: five principles, hedge-word lists, four-layer revision flow
- `references/stakeholder-canvas.md`: power-interest matrix, salience model, writing canvas, crisis rules
- `references/genre-templates.md`: eight recurring genres, from business email to ESG narrative
- `references/proposal-playbook.md`: seven-step framework, one-page rule, common failure modes
- `references/press-release.md`: press release structure, AP style, dateline conventions
- `references/c-level-writing.md`: three modes, institutional authorship, Hong Kong's three-layer accountability, BLUF and FIIA
- `references/social-media-writing.md`: discovery paths, zero-click, GEO, AI disclosure, employee and CEO accounts
- `references/brand-storytelling.md`: four questions, five elements, hero's journey, failure modes
- `references/guardian-extension.md`: notes on combining this skill with a Guardian-style English register

## Design Notes

**Reference files load on demand.** `SKILL.md` holds the workflow and the routing table; the eight reference files hold genre-specific depth. An agent reads only what the task needs.

**The routing table is the core artefact.** Knowing that a crisis statement is not a press release, and that a brand story is not a company history, prevents more bad corporate writing than any list of style rules.

**Facts are never invented.** Missing data becomes an explicit `[待填：XXX]` placeholder. Simulated or practice scenarios must be labelled as such. Numbers without a traceable source are treated as a liability, not as support.

**Optional companions are not prerequisites.** The skill references `guardian-style-writing` for a Guardian English register and `humanizer` for a final anti-AI pass. Both are enhancements; the five-phase workflow and the four-layer revision run without them.

## Notes

- Templates are structural, not fill-in-the-blank. The skill requires content decisions before it will draft.
- Bilingual output is produced from a shared information outline, never by translating a finished draft.
- The internal and external versions of any announcement must share the same facts and commitments. The final test: if the internal brief were published tomorrow, would the external version still be honest?

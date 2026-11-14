# Bundled copy — read this first

This directory is an **unmodified** copy of the `humanizer-zh` skill by 歸藏 (Guizang).

- Upstream: <https://github.com/op7418/Humanizer-zh>
- Licence: MIT (see [LICENSE](LICENSE) in this directory, retained verbatim)
- Basis: a Chinese translation of [blader/humanizer](https://github.com/blader/humanizer), with utility sections drawn from [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop)

## If you arrived here from the installer

You do not need to do anything. `install.sh` in the repository root already placed this
skill in your agent's skills directory. The clone instructions inside `README.md` refer to
the upstream project and will pull the upstream repo instead of this bundled copy — ignore
them unless you specifically want to track upstream.

```bash
# From the repository root — installs all four skills
./install.sh
```

## Why it is bundled

`corporate-writing-skills` routes English output through `humanizer` as the final anti-AI
pass. Chinese output has no equivalent in the English skill, which is written for English
prose patterns. `humanizer-zh` fills that gap: it targets the same tells in Chinese
(夸大的象征意义、宣传性语言、模糊的归因、破折号过度使用、三段式法则、AI 词汇、否定式排比)
and carries a Chinese-specific checking routine.

## How it fits the pipeline

```text
English output:  corporate-writing-skills → guardian-style-writing → humanizer
Chinese output:  corporate-writing-skills ─────────────────────────→ humanizer-zh
```

The Guardian register is English-only, so Chinese output skips stage 2. Both humanizers
run last and must not flatten the genre — a memo stays a memo.

## Updating

To track upstream rather than this bundled snapshot:

```bash
git clone https://github.com/op7418/Humanizer-zh.git /tmp/humanizer-zh-upstream
diff -ru /tmp/humanizer-zh-upstream/SKILL.md ./SKILL.md
```

If you replace the files here, keep `LICENSE` intact — the MIT terms require the
copyright notice to travel with the code.

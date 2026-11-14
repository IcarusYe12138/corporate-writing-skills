# Bundled copy — read this first

This directory is an **unmodified** copy of the `humanizer` skill by Siqi Chen.

- Upstream: <https://github.com/blader/humanizer>
- Licence: MIT (see [LICENSE](LICENSE) in this directory, retained verbatim)
- Version bundled: see the `version` field in `SKILL.md`

## If you arrived here from the installer

You do not need to do anything. `install.sh` in the repository root already placed this
skill in your agent's skills directory. The clone instructions inside `README.md` and
`WARP.md` refer to the upstream project and will pull the upstream repo instead of this
bundled copy — ignore them unless you specifically want to track upstream.

```bash
# From the repository root — installs all three skills
./install.sh
```

## Why it is bundled

`corporate-writing-skills` uses `humanizer` as the final anti-AI pass on English output
(Phase 5). Bundling it means one clone yields a working three-stage pipeline with no
extra installation step.

The pipeline still runs if this directory is absent — `corporate-writing-skills` will
note in delivery that no anti-AI pass was applied.

## Updating

To track upstream rather than this bundled snapshot:

```bash
git clone https://github.com/blader/humanizer.git /tmp/humanizer-upstream
diff -ru /tmp/humanizer-upstream/SKILL.md ./SKILL.md
```

If you replace the files here, keep `LICENSE` intact — the MIT terms require the
copyright notice to travel with the code.

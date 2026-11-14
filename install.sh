#!/usr/bin/env bash
# Install the corporate-writing bundle into your agent's skills directory.
#
# Usage:
#   ./install.sh                      # install all three skills
#   ./install.sh --only corporate-writing-skills
#   ./install.sh --target ~/.claude/skills
#   ./install.sh --link               # symlink instead of copy (stays in sync with the repo)

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUNDLE_DIR="$REPO_DIR/skills"
TARGET="$HOME/.agents/skills"
MODE="copy"
ONLY=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --target) TARGET="$2"; shift 2 ;;
    --only)   ONLY="$2"; shift 2 ;;
    --link)   MODE="link"; shift ;;
    -h|--help)
      sed -n '2,9p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'
      exit 0 ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
done

if [[ ! -d "$BUNDLE_DIR" ]]; then
  echo "Error: $BUNDLE_DIR not found. Run this script from inside the cloned repo." >&2
  exit 1
fi

mkdir -p "$TARGET"

install_one() {
  local name="$1"
  local src="$BUNDLE_DIR/$name"
  local dest="$TARGET/$name"

  [[ -d "$src" ]] || { echo "  skip  $name (not in bundle)"; return; }

  if [[ -e "$dest" || -L "$dest" ]]; then
    local backup="$dest.bak.$(date +%Y%m%d%H%M%S)"
    mv "$dest" "$backup"
    echo "  backup $name -> $(basename "$backup")"
  fi

  if [[ "$MODE" == "link" ]]; then
    ln -s "$src" "$dest"
    echo "  link   $name"
  else
    cp -R "$src" "$dest"
    echo "  copy   $name"
  fi
}

echo "Installing to: $TARGET"
echo

if [[ -n "$ONLY" ]]; then
  install_one "$ONLY"
else
  for name in corporate-writing-skills guardian-style-writing humanizer; do
    install_one "$name"
  done
fi

echo
echo "Done. Verify with:"
echo "  ls \"$TARGET\""
echo
echo "Note: humanizer is MIT-licensed by Siqi Chen. Its LICENSE is bundled at"
echo "      $TARGET/humanizer/LICENSE"

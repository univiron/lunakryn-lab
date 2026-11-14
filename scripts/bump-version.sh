#!/bin/sh
# bump-version.sh — bump this repo's VERSION file (minor|patch only).
# No major mode by design: a major bump requires user discussion + ceremony.
# Usage: scripts/bump-version.sh minor|patch
set -eu
cd "$(dirname "$0")/.."

usage() { echo "usage: $0 minor|patch" >&2; exit 1; }
[ $# -eq 1 ] || usage
case "$1" in
  minor|patch) ;;
  major) echo "refused: no major mode — a major bump needs ceremony, not a script." >&2; exit 1 ;;
  *) usage ;;
esac

[ -f VERSION ] || { echo "no VERSION file — bootstrap it first (see versioning docs)." >&2; exit 1; }
old=$(tr -d ' \t\r\n' < VERSION)
major=${old%%.*}; rest=${old#*.}; minor=${rest%%.*}; patch=${rest#*.}
[ -n "$major" ] && [ -n "$minor" ] && [ -n "$patch" ] || { echo "malformed VERSION: '$old'" >&2; exit 1; }
case "$major$minor$patch" in *[!0-9]*) echo "malformed VERSION: '$old'" >&2; exit 1 ;; esac
case "$patch" in *.*) echo "malformed VERSION: '$old'" >&2; exit 1 ;; esac

if [ "$1" = minor ]; then minor=$((minor + 1)); patch=0; else patch=$((patch + 1)); fi
new="$major.$minor.$patch"
printf '%s\n' "$new" > VERSION

if [ -f package.json ]; then
  python3 - "$new" <<'PY'
import json, sys
p = 'package.json'
with open(p) as f:
    data = json.load(f)
data['version'] = sys.argv[1]
with open(p, 'w') as f:
    json.dump(data, f, indent=2)
    f.write('\n')
PY
fi

echo "$old -> $new"

#!/bin/bash
# Install the plugins declared in .claude/settings.json (enabledPlugins)
# so they are available in Claude Code cloud sessions.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "${CLAUDE_PROJECT_DIR:-.}"

marketplace_repo="gosuda/dalcom-skills"
plugins=(dstack-core@dstack dstack-code@dstack)
installed="$HOME/.claude/plugins/installed_plugins.json"

missing=()
for p in "${plugins[@]}"; do
  if ! grep -q "\"$p\"" "$installed" 2>/dev/null; then
    missing+=("$p")
  fi
done

if [ ${#missing[@]} -eq 0 ]; then
  exit 0
fi

claude plugin marketplace add "$marketplace_repo" >&2
for p in "${missing[@]}"; do
  claude plugin install "$p" >&2
done

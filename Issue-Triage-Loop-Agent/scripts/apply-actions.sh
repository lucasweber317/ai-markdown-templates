#!/usr/bin/env bash
# Executes the write-mode actions Claude proposed in proposed-actions.json.
# Deliberately kept as a small, reviewable script rather than letting the agent call GitHub's write API itself —
# see CLAUDE.md's Autonomy & Safety Rules for why.
# Requires: gh CLI (authenticated), jq.
set -euo pipefail

ACTIONS_FILE="${1:-proposed-actions.json}"

if [ ! -f "$ACTIONS_FILE" ]; then
  echo "No $ACTIONS_FILE found — nothing to apply." >&2
  exit 0
fi

COUNT=$(jq 'length' "$ACTIONS_FILE")
echo "Applying $COUNT proposed action(s) from $ACTIONS_FILE"

jq -c '.[]' "$ACTIONS_FILE" | while read -r action; do
  ISSUE=$(echo "$action" | jq -r '.issue')
  COMMENT=$(echo "$action" | jq -r '.comment // empty')
  LABEL=$(echo "$action" | jq -r '.label // empty')

  if [ -n "$COMMENT" ]; then
    echo "Commenting on #$ISSUE"
    gh issue comment "$ISSUE" --body "$COMMENT"
  fi

  if [ -n "$LABEL" ]; then
    echo "Labeling #$ISSUE as $LABEL"
    gh issue edit "$ISSUE" --add-label "$LABEL" || echo "  (skipped — label '$LABEL' may not exist on this repo)"
  fi
done

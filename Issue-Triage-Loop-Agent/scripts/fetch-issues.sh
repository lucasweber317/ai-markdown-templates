#!/usr/bin/env bash
# Fetches issues created/updated since the cursor in memory/last-run.md and prints them as JSON on stdout.
# Requires: gh CLI, authenticated (on GitHub Actions this is automatic via GH_TOKEN=${{ github.token }}).
set -euo pipefail

CURSOR_FILE="memory/last-run.md"
REPO="${GITHUB_REPOSITORY:-}"

if [ -z "$REPO" ]; then
  echo "GITHUB_REPOSITORY is not set — pass owner/name explicitly as \$1 when running locally." >&2
  REPO="${1:?Usage: fetch-issues.sh [owner/name] (or set GITHUB_REPOSITORY)}"
fi

CURSOR=$(grep -oE '<!-- cursor: [^>]+ -->' "$CURSOR_FILE" 2>/dev/null | sed -E 's/<!-- cursor: (.+) -->/\1/' || true)

if [ -z "$CURSOR" ]; then
  echo "No cursor found in $CURSOR_FILE — this looks like the first run; fetching everything open." >&2
  gh issue list \
    --repo "$REPO" \
    --state all \
    --json number,title,body,labels,state,createdAt,updatedAt,url \
    --limit 200
else
  gh issue list \
    --repo "$REPO" \
    --state all \
    --search "updated:>=${CURSOR}" \
    --json number,title,body,labels,state,createdAt,updatedAt,url \
    --limit 200
fi

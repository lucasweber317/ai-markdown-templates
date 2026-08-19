# Known Issues

> This is the dedupe index — every issue the agent has ever seen, kept so a new issue can be compared against history, not just against what's in the current batch.

---

**Instructions:** The agent appends a row the first time it sees an issue, and updates the row (status, category) if that issue changes later. Don't manually delete rows for closed issues — closed issues are exactly what a new duplicate report needs to be compared against.

| # | Title | Category | First seen | Status |
|---|---|---|---|---|
| *(none yet — this fills in after the first run)* | | | | |

**What NOT to do:**
- ❌ Don't rewrite titles to "clean them up" — keep the issue's actual title so comparisons stay honest.
- ❌ Don't remove an entry because it was later confirmed as a duplicate — mark its status instead (e.g. `closed as duplicate of #N`).

# Last Run

> This file stores the cursor the agent uses to know what's new, plus an append-only log of every run. Never delete rows from the log — an unattended agent's audit trail is what lets you trust it.

---

## Cursor

<!-- cursor: 2026-01-01T00:00:00Z -->

**Instructions:** The line above is machine-readable — the agent reads and rewrites exactly that line every run, using the latest `updatedAt` timestamp it processed. Before the first real run, set it to a "start of time" date so the first digest captures everything currently open. Do not remove the HTML comment or change its format.

---

## Run Log

**Instructions:** Append one row per run, oldest first. Never edit or delete a past row — if a run misbehaved, add a note in the same row rather than rewriting history.

| Date (UTC) | Cursor advanced to | Issues processed | Digest |
|---|---|---|---|
| *(none yet — this fills in after the first run)* | | | |

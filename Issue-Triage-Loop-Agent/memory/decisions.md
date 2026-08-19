# Decisions

> This file stores confirmed methodology decisions that affect how future runs triage — not product decisions (there's no product-decision concept here, this agent triages a tracker, it doesn't evaluate opportunities).

---

## Confirmed Decisions

**Instructions:** Record decisions about how the agent should behave, once you've confirmed them by watching a few runs. Each entry: what was decided, why, and the date.

**Examples of decisions to capture:**
- **Duplicate confidence bar**: Only flag duplicates at Medium confidence or above by default; Low-confidence matches still appear in the digest but never generate a write-mode action. Chosen after the first few runs surfaced too many low-value Low-confidence flags. 2026-09-01.
- **Urgency keyword addition**: Added "outage" to the urgency keyword list in `context/repo.md` after a real incident issue didn't get flagged because it used that word instead of "production down." 2026-09-15.

**Examples of what NOT to capture:**
- ❌ A one-off judgment call about a single issue (that belongs in the digest, not here)
- ❌ Tentative ideas you haven't actually watched play out over a few runs

---

## How to Use This File

- Record only confirmed, durable methodology decisions — not one-off calls.
- Include the date and the reason, so a future change can be weighed against why the current rule exists.
- Do not remove historical decisions without explicit approval.

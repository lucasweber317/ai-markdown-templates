# Repo Context — read this before every run

This file tells the agent which repo it's watching and how to classify what it finds. It's read-only grounding, same role as `context/product.md` in the on-demand agents — except here it's read by an unattended workflow, not a human opening a chat, so keep it accurate.

---

## Repo

- **Owner/name:** `<github-owner>/<repo-name>` — set this before the first run.
- **Issue states in scope:** open and recently-closed (closed issues are excluded from triage but stay in `memory/known-issues.md` for dedupe comparison against new ones).

---

## Classification taxonomy

Every new or updated issue gets exactly one primary category:

- **Bug** — something that used to work, or should work, and doesn't.
- **Feature** — a request for new capability.
- **Question** — someone asking how to do something, not reporting a fault.
- **Other** — anything that doesn't fit cleanly (chore, discussion, etc.) — don't force-fit.

---

## Urgency definition

Kept here (not duplicated in the skill file) so it's the single place to tune. See `CLAUDE.md`'s Autonomy & Safety Rules for how this gets used — the list itself is the whole definition, nothing is inferred beyond it:

- Keywords appearing in title or body: "data loss", "security", "production down", "all users affected"
- Labels: `P0`, `priority:high`

---

## Write mode (optional, off by default)

When `WRITE_MODE=true` is set on the workflow run:

- Likely-duplicate issues get a comment linking them together (drafted by the agent, posted by `scripts/apply-actions.sh` — the agent never posts directly).
- A `possible-duplicate` label is added if that label exists on the repo already (the agent does not create labels).

Leave this off until you've reviewed a few digests and trust the duplicate calls.

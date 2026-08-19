# Repo Context — fill this in, then upload it to your Project

The agent reads this before every check. Short and current beats long and stale.

---

## Repo

- **Owner/name:** (e.g. `your-org/your-repo`)
- **Issue states in scope:** open and recently-closed (closed issues stay useful for duplicate comparison)

---

## Classification taxonomy

- **Bug** — something that used to work, or should work, and doesn't.
- **Feature** — a request for new capability.
- **Question** — someone asking how to do something, not reporting a fault.
- **Other** — anything that doesn't fit cleanly — don't force it.

---

## Urgency definition

List only what should count — nothing outside this list gets flagged as urgent, however it reads:

- **Keywords:** (e.g. "data loss", "security", "production down", "all users affected")
- **Labels:** (e.g. `P0`, `priority:high`)

---

## Decisions & notes

Your running memory — this substitutes for the developer version's `memory/` folder. When the agent flags something durable, add it here and re-upload this file.

- **Known issues** *(paste a running list of previously-seen issue numbers + titles here, so future duplicate checks compare against history, not just the current batch)*:
  - (e.g.) #38 — CSV export fails
- **Confirmed duplicates**:
  - (e.g.) #41 confirmed duplicate of #38 — same export failure, different wording.
- **Methodology decisions**:
  - (e.g.) Only flag duplicates at Medium confidence or above — too many Low-confidence flags turned out to be noise.

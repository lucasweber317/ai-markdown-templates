---
name: compare-interviews
description: Compare a slice of interviews (a segment, date range, or shared attribute) across all research themes.
---

# Skill: compare-interviews

**When to use:** the request names a slice of interviews to compare — e.g. a segment, a date range, a stack pattern. Output covers all research themes for that slice.

---

## Procedure

1. **Read context + memory.** Select the interviews in the slice from `interview-notes/` using the filter in the request (type, date, segment, stack notes, etc.).

   - If an interview in scope isn't a file yet (a pasted transcript, a doc/Confluence page, a URL), normalize it into `interview-notes/` first per `CLAUDE.md` "Interview Input," then apply the filter.
   - If the slice resolves to a single interview, apply the single-source guard in `CLAUDE.md` rule 3 instead of producing a one-row "comparison."

2. **Build the comparison table.** One column (or row) per interview — allocation splits, primary theme, pilot, contact, key context.

3. **Per-theme read.** For each research theme, follow the layout in `CLAUDE.md` rule 4: signal, finding × interview matrix, 2–3 curated quotes, urgency, next-step tag. The matrix is where agreement and divergence show — a cell that differs across columns *is* the divergence.

4. **Fold slice-wide insights into the executive summary** — don't add a separate "what's true of this slice" section.

5. **Write the synthesis** using `.claude/skills/synthesis-template.md`. Save to `syntheses/synthesis-<slice>-<YYYY-MM-DD>.md`. The first line states the slice filter, so the scope is clear later.

6. **Update memory** only when durable.

---

## Style

Lead with the signal. Use the customers' actual words. Show blank matrix cells rather than guessing. No solution design. No scoring.

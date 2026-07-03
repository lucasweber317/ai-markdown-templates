# CLAUDE.md

This repository summarizes a set of customer or user interview notes into comparison-and-theme write-ups that feed downstream prioritization (e.g. opportunity assessment).

Claude operates as a disciplined Product Manager grounded in persistent context and memory.

---

## Repository Structure

- `context/` → product grounding (product, personas, research themes)
- `memory/` → durable decisions, assumptions, glossary, links
- `interview-notes/` → input interview notes (one file per interview)
- `syntheses/` → output write-ups
- `.claude/skills/` → routing skills and output template

---

## Interview Input

Interviews live as one Markdown file per interview in `interview-notes/`, structured like `interview-notes/example-interview.md` (metadata → allocation exercise → deep-dive → verbatim quotes). The comparison matrix depends on that consistent structure, so this file shape is the source the skills read.

The agent also accepts an interview from other sources and **normalizes it into that structure first**, before any synthesis:

- **A documentation or Confluence page** → fetch it; if it can't be reached, ask the user to paste the content.
- **A URL** → retrieve the content, then normalize.
- **A pasted transcript or raw notes** → extract the metadata, allocation, deep-dive, and quotes into the note structure.

Normalization rules:

1. Save the normalized interview as a new file in `interview-notes/` named `<customer>-<YYYY-MM-DD>.md` before synthesizing, so the input is reusable and the matrix stays consistent. Confirm the filename when the customer or date is unclear.
2. Preserve quotes verbatim. Never invent allocation numbers, quotes, or fields that aren't in the source.
3. If a required field is missing (no allocation exercise was run, no date, no contact), mark it `N/A` or flag it — don't fabricate it.
4. One source = one interview file. If a single page holds multiple interviews, split them into one file each.

---

## Default Operating Rules

1. Always read `context/` and `memory/` before writing a synthesis.

2. Routing a request:
   - **One research theme across all interviews** → `synthesize-theme`.
   - **A slice of interviews** (a segment, a date range, a stack pattern) → `compare-interviews`.
   - **A specific named list of interviews** → `synthesize-from-list`.
   - **No scope given** → ask for a theme, a slice, or a list. Do not invent scope.

3. **Single source** — if the scope resolves to one interview, don't produce a full synthesis by default. One interview is already structured notes; say so and offer to fold it into a multi-interview comparison.

4. Output rules — see `.claude/skills/synthesis-template.md`. In short:
   - **Signal table first** — "Comparison table" for 2+ interviews, "Signal summary" for one.
   - **Per-theme sections** — a one-line signal, a finding × interview matrix, 2–3 curated verbatim quotes, an urgency signal, a next-step tag.
   - **Tag each theme** — *feeds downstream as new brief* / *covered by existing work* / *log only*.
   - **No quote appendix** — quotes are attributed inline.

5. Style — lead with the signal; quotes back it up. Never paraphrase a quote you have verbatim. No solution design. No prioritization scoring. Never invent quotes.

---

## Memory Map

Write durable entries only to:

- `memory/assumptions.md`
- `memory/decisions.md`
- `memory/glossary.md`
- `memory/links.md`

Avoid duplication. Don't add entries useful only to a single run.

---
name: synthesize-theme
description: Summarize one research theme across all interviews — its signal, the cross-interview pattern, and supporting quotes.
---

# Skill: synthesize-theme

**When to use:** the request names one research theme and asks for a summary across all (or many) interviews.

---

## Procedure

1. **Read context + memory** (`CLAUDE.md` pre-work), then read every in-scope interview note from `interview-notes/`.

   - If an in-scope interview isn't a file yet (a pasted transcript, a doc/Confluence page, a URL), normalize it into `interview-notes/` first per `CLAUDE.md` "Interview Input."

2. **Pull the theme's signals from each interview** — its allocation, the deep-dive if one ran, and any quotes tagged to it. Mark interviews where the theme wasn't covered as `N/A`.

3. **Find 1–3 sub-findings** that recur across interviews. For each, follow the per-theme layout in `CLAUDE.md` rule 4: a one-line signal, a finding × interview matrix, 2–3 curated verbatim quotes, an urgency signal, a next-step tag.

4. **Write the synthesis** using `.claude/skills/synthesis-template.md` (a single theme → one themed section). Save to `syntheses/synthesis-<theme>-<YYYY-MM-DD>.md`. The first line states the sources and the theme.

5. **Update memory** only if a durable assumption, decision, or recurring framing emerges.

---

## Style

Lead with the signal; quotes back it up. Never paraphrase a verbatim quote. If the theme is absent from an interview, say so — don't pad. No solution design. No scoring.

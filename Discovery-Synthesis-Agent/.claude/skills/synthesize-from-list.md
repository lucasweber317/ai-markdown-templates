---
name: synthesize-from-list
description: Synthesize from a specific named list of interviews only — no broader scan.
---

# Skill: synthesize-from-list

**When to use:** the request hands you a specific list of interviews (by name or file) and wants a synthesis from those only.

---

## Procedure

1. **Resolve the list.** Match the named interviews to files in `interview-notes/`. If a name is ambiguous, ask before continuing.

   - If a listed interview isn't a file yet (a pasted transcript, a doc/Confluence page, a URL), normalize it into `interview-notes/` first per `CLAUDE.md` "Interview Input."
   - If the list resolves to a single interview, apply the single-source guard in `CLAUDE.md` rule 3.

2. **Read context + memory**, then read each listed interview.

3. **Pick the shape:**
   - Angle is one theme → use the `synthesize-theme` shape over the listed interviews.
   - Angle is a comparison, or none given → use the `compare-interviews` shape over the listed interviews.

4. **Write the synthesis** per `.claude/skills/synthesis-template.md` and `CLAUDE.md` rule 4. Save to `syntheses/synthesis-<scope>-<YYYY-MM-DD>.md`. The first line states the source list and the angle.

5. **Update memory** only when durable.

---

## Style

Don't reach for evidence outside the listed interviews. If a theme is thin within the list, say so. Same output rules as the other skills.

---
name: synthesize-period
description: Synthesize customer feedback for a date range or quarter, scanning all configured channels, into themed findings ranked by frequency × urgency.
---

# Skill: synthesize-period

**When to use:** the request names a date range or quarter ("Q1", "last 90 days") and asks what customers are saying.

---

## Procedure

1. **Read inputs** — the brief (or the plain-language ask), `context/`, `memory/feedback-channels.md`, `memory/themes.md`, `memory/links.md`. Normalize fuzzy scope ("last quarter") to an explicit date range.

2. **Gather feedback from every channel** listed in `memory/feedback-channels.md`, scoped to the date range. Channels vary per setup — typical ones: ticket system, chat channels, customer emails, business-review notes, survey exports, community forum, and files in `feedback-sources/`. If a channel is connected to Claude, scan it directly; otherwise ask the user for an export.

3. **Cluster into themes.**
   - Group quotes by theme (semantic similarity, not exact text match).
   - Per theme: count mentions, count distinct customers, capture urgency signals.
   - Cross-reference `memory/themes.md` to flag recurring themes 🔴.
   - Rank by frequency × urgency.

4. **Write the synthesis** using `.claude/skills/synthesis-template.md`. Save to `syntheses/voc-[scope-slug]-[YYYY-MM-DD].md`.

5. **Update memory:**
   - Append new themes to `memory/themes.md`; refresh last-seen dates and frequency trends on existing ones.
   - Add notable verbatim quotes to `memory/customer-language.md`, grouped by topic.
   - Update the "Last Synthesis Run" section of `memory/feedback-channels.md`.

---

## Error handling

- A channel fails or is unavailable → continue with the rest and name the gap in the synthesis.
- No quotes in scope → write "No notable signal in this period" and still update the run log.

---

## Style

Themes lead, quotes back them up, attribution is mandatory. No solution design; no prioritization calls.

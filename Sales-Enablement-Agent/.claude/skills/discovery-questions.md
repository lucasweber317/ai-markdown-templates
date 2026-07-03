---
name: discovery-questions
description: Generate 5–10 qualifying questions a rep can use on a live call to test fit for a feature, with answer cues, red flags, and a next-step menu.
---

# Skill: discovery-questions

**When to use:** the request asks for qualifying questions a rep can use to test fit for a feature on a live call.

> **"Discovery"** here means the early sales-call stage where a rep qualifies a prospect — their pain, their fit, whether they're ready to buy.

---

## Output shape

A single Markdown file with these sections in order:

1. **Header** — feature name, audience, version date.
2. **Goal of this Discovery** — one line: what the rep should know by the end of the call.
3. **Qualifying questions** — 5–10 questions, grouped into 2–3 themes (e.g. "Current pain", "Stack fit", "Buying readiness"). For each question:
   - 1 line.
   - A one-line "what a good answer sounds like" cue underneath (interviewer note, not to be read out).
4. **Red flags** — 2–4 signals that the prospect isn't a fit; one-line reason each.
5. **Next step menu** — 2–3 next-step options the rep can propose, matched to how the call went (e.g. demo, pilot, technical deep-dive).
6. **Sources** — links to the material the questions draw on. Internal-only.

---

## Procedure

1. Read `context/product.md`, `context/personas.md` (both the audience's profile and the customer being qualified), `memory/decisions.md` (for confirmed ideal-customer signals).
2. Pull recurring qualifying patterns from research write-ups where they exist — questions should map to signals that interviews show actually matter.
3. Draft the question set in the shape above. Aim for ≈ 300–400 words total.
4. Save to `enablement-outputs/[audience]-discovery-questions-[feature]-YYYY-MM-DD.md`.

---

## Style

- Open-ended questions ("how do you…", "what happens when…"). Avoid yes/no.
- Match the language to the audience using `context/personas.md` and `memory/glossary.md`.
- Don't give away the answer that qualifies the prospect.

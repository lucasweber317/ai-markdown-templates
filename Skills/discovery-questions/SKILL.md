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

## Context (standalone)

This skill does **not** require a special agent folder.

1. Use any product / persona / roadmap / glossary context the user provides (pasted text, linked docs, or files in the current workspace).
2. If critical context is missing, ask for it (max 5 questions) — then proceed.
3. Prefer evidence the user supplies over inventing facts. Mark unknowns as TBD.
4. Write the deliverable in the conversation (and to a file only if the user asks or a path is obvious in the workspace).


1. Confirm feature and who the rep is qualifying.
2. Pull recurring qualifying patterns from research write-ups where they exist — questions should map to signals that interviews show actually matter.
3. Draft the question set in the shape above. Aim for ≈ 300–400 words total.
4. Deliver in chat; save to a file only if asked.

---

## Style

- Open-ended questions ("how do you…", "what happens when…"). Avoid yes/no.
- Match the language to the audience to the audience the user described.
- Don't give away the answer that qualifies the prospect.

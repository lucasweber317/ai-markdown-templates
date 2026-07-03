---
name: talk-track
description: Write a short (~2–3 minute) pitch script a rep can speak through on a Discovery or expansion call — hook, problem, solution, evidence, close, and objection responses.
---

# Skill: talk-track

**When to use:** the request asks for a short pitch script a rep can speak through on a call. Nobody gets 5–10 minutes on a single feature — keep it tight.

---

## Before you draft — confirm the scenario

A talk track is shaped by *who's on the call*. If the brief or prompt doesn't say, **ask before writing — don't guess.** Two things to pin down:

1. **Audience** — Account Executive by default; Customer Success Manager if stated.
2. **Call context** — a **new prospect** (Discovery) or an **existing customer** (adoption / expansion)?

It changes the hook, the evidence, and the ask:

| | New prospect (Discovery) | Existing customer (adoption / expansion) |
|---|---|---|
| **Hook** | The problem they may not know they have | "You already have this gap — here's the switch" |
| **Evidence** | Proof the problem is real + peer demand | It's built and low-risk to turn on; who else runs it |
| **Close** | Book the next meeting / demo | Enable it in a test environment / expand the license |

Name the chosen scenario in the header so the reader knows which call it's for.

---

## Output shape

A single Markdown file with these sections in order:

1. **Header** — a purpose-based title plus a one-line length note (`~2–3 minutes`). The title names what the doc is *for*: `Feature Pitch: [Feature]` for a new prospect, `Feature Upsell / Explanation: [Feature]` for an existing customer. The title and length note are the whole header.
2. **Opening hook (30 sec)** — one-line problem framing in the customer's language.
3. **Problem (30–60 sec)** — 2–3 named customer pains, each anchored by a real quote or named pattern from research write-ups.
4. **Solution (60 sec)** — what the product does about it. Outcome-first. ≤ 3 capability statements; each ≤ 2 sentences.
5. **Evidence (30 sec)** — 1 customer reference + 1 quantified outcome where available (confirmed in `memory/decisions.md` or `context/roadmap.md`).
6. **Close + ask (30 sec)** — the next step the rep should propose. Give two variants: a "warm" close and a "cool" close.
7. **If they say…** — short objection table (3–4 rows) with one-sentence responses.
8. **Sources** — links to the material the track draws on. Internal-only.

---

## Procedure

1. Confirm the scenario (audience + new prospect vs. existing customer) — see "Before you draft." If it's not in the brief or prompt, ask first.
2. Read `context/product.md`, `context/personas.md`, `context/roadmap.md`, `memory/glossary.md`, `memory/decisions.md`.
3. Pull customer-language hooks and proof patterns from research write-ups where they exist.
4. Draft the talk track. Keep the spoken pitch to ≈ 300–400 words (~2–3 minutes aloud) — it's one feature, not a deck.
5. Save to `enablement-outputs/[audience]-talktrack-[feature]-YYYY-MM-DD.md`.

---

## Style

- Written for the ear: short sentences, second-person, no jargon.
- Customer language first; product language only where needed.
- **No markup system for the rep to track.** Don't wrap spoken lines in quotes or hide guidance in brackets — the rep is reading this live. Write the spoken pitch as plain text under clear section headers. Keep any non-spoken note to a rare, short parenthetical.
- No internal codenames; no unconfirmed dates.

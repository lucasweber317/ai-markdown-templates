---
name: battlecard
description: Produce a one-page internal sales card for a feature — positioning, customer pain, top objections with responses, qualifying questions, competitive frame, and proof points.
---

# Skill: battlecard

**When to use:** the request asks for a one-page sales card on a feature, usually Account Executive–facing and internal.

---

## Output shape

A single Markdown file with these sections in order:

1. **Header** — title the card `Battlecard: [Feature]` (spelled out, no acronyms in the title); then feature name and version date.
2. **One-line positioning** — what it is, who it's for, why it matters. ≤ 30 words.
3. **Customer pain it solves** — 2–3 bullets, each backed by a real customer quote where one exists. Link the source write-up; never invent a quote.
4. **Top 3 objections + responses** — table. Objection (in the customer's own words where possible) → 1–2 sentence response → supporting evidence (roadmap item, customer reference, decision in memory).
5. **Qualifying questions** — 3–5 questions a rep can use on a call to test fit.
6. **Competitive frame** — internal cards only; skip for anything customer-facing. Prefer a coverage matrix: capabilities down the side × named competing products across the top (real alternatives only — not "DIY" / "do nothing"), ✓/✗ cells, and a one-line "reading it" takeaway below. Push caveats into a footnote, never into a cell.
7. **Proof points** — customers, pilots, results — but only those confirmed in `memory/decisions.md` or `context/roadmap.md`.
8. **Don't say** — short list of language to avoid: internal codenames, unconfirmed dates, retired terms from `memory/glossary.md`, customer names that mustn't reach a prospect.
9. **Sources** — links to the material the card draws on. Non-linkable sources get a text descriptor, not a fake link. Internal-only — never on a customer-facing card.

---

## Procedure

1. Read `context/product.md`, the relevant `context/personas.md` profile, `context/roadmap.md` (for timing language), `memory/glossary.md`, `memory/decisions.md`.
2. If customer research write-ups exist (or the user points at them), pull objections and pain language from there. Use the customers' actual words; don't paraphrase.
3. Draft the card in the shape above. Aim for one page when rendered (≈ 400–500 words).
4. Save to `enablement-outputs/[audience]-battlecard-[feature]-YYYY-MM-DD.md`.

---

## Style

- Outcome-first, not feature-first. Lead with the pain, then the response.
- Attribute quotes as `"..." — Contact, role, Customer (segment) (source)`. Internal cards may name the customer; customer-facing formats must not.
- No specific dates unless confirmed in `memory/decisions.md`. Use quarter ranges.
- No made-up proof points. An empty evidence slot with a flag beats an invented one.
- Spell out acronyms on first use; no acronyms in the title or headings until clarified.
- The card is the deliverable — no draft banners or scaffolding in the body.

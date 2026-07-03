---
name: synthesize-customer
description: Per-customer rollup of all known feedback, requests, and commitments — for business-review prep, churn-risk assessment, expansion prep, or briefing a teammate before a customer meeting.
---

# Skill: synthesize-customer

**When to use:** the request names one customer. The **lens** shapes the framing — confirm it if unstated: business-review prep / churn risk / expansion / general.

---

## Procedure

1. **Read inputs** — same pre-work as `synthesize-period`. Default time range: last 12 months.

2. **Pull everything about this customer** from every channel in `memory/feedback-channels.md`: their requests, tickets, escalations, praise, and any commitments made back to them.

3. **Structure the rollup:**

   - **Title:** `[Customer] — [Lens label]` (e.g. `Northwind — Business Review Prep`).
   - **Snapshot** — account owner, segment, and a one-line health signal synthesized from urgency, ticket status, and recency.
   - **Open requests** — one row per request: what they want, source, date, urgency, internal status, and **commitment made to the customer**. Put the exact commitment language; if nothing is documented, write **"None recorded"** — never a raw placeholder. If no timing commitments exist at all, say so in one line ("we haven't over-promised" is itself useful signal).
   - **Recent friction** — tickets, escalations, complaints in scope. Quote-attributed.
   - **What they value** — positive signal; useful for preserving in any redesign.
   - **Talking points** — 3–5 bullets, heading tailored to the lens:
     - Business review → "Suggested talking points (for the review)"
     - Churn risk → "Recommended moves (to de-risk renewal)"
     - Expansion → "Suggested talking points (for the expansion conversation)"
     - General → "Key takeaways"
     Net-new requests with no backing ticket are the implicit candidates for new briefs — call them out here.
   - **Sources scanned** — last on the page; link what's linkable.

   Save to `syntheses/voc-customer-[slug]-[YYYY-MM-DD].md`.

4. **Update memory** — customer rollups are customer-shaped, not theme-shaped, so `memory/themes.md` updates only if the rollup surfaces a previously-unknown theme. Notable quotes still go to `memory/customer-language.md`.

---

## Style

Every quote attributed inline; no raw-quote appendix. The health signal is synthesized, not copied from a field. Never soften an at-risk read — the reader is preparing for the conversation.

# Product Release Tier — AI Project Template

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

Turns a release brief into a tier-based launch checklist: which communication channels the release needs, a week-by-week timeline with a named owner for every action, and launch-day plus post-launch follow-ups — all scaled to one of four release tiers, from full market launch (T1) down to changelog-only update (T4). Works in any AI tool that supports projects — no technical tools needed.

---

## Why

Launches fail in two directions: a minor fix gets a campaign, or a major feature ships with a changelog entry and a shrug. Tiers fix that. Each tier fixes the channels, timeline depth, and team involvement in advance, so launch intensity matches business impact instead of whoever shouts loudest — and the checklist is coordination work, not marketing copy.

---

## Setup (5 minutes)

1. In your AI tool, create a **project** (or gem, or assistant) and name it "Product Release Tier."
2. Copy all of `INSTRUCTIONS.md` into the project's **instructions**.
3. Fill in `PRODUCT-CONTEXT.md` (your product, personas, launch roles, and launch norms) and upload it to the project as a file.
4. Bring a release: paste your release brief into the chat — or ask the agent to build one with you by answering its questions.

---

## Example prompts

- "Here's the release brief for our new reporting dashboard — generate the T2 checklist."
- "Help me write a release brief for a T3 usability improvement shipping September 15."
- "The Northwind launch moved from May 5 to June 2 — update the timeline."
- "Sales now wants enablement and a webinar for this T3 release — does that make it a T2?"
- "Generate a T4 checklist for the backend performance fix in version 4.1."

---

## What you'll get

A complete release checklist: a release overview table (tier, version, date, owner), a required-channels table showing exactly which communications this tier gets, a week-by-week timeline with owner, action, and product status for each row, a launch-day table, and post-launch follow-ups. Every action is role-based and time-bound. Copy it into your project tracker or wiki.

---

## Tips

- The agent won't escalate scope beyond the declared tier or quietly reclassify a release — if scope and tier conflict, it flags the mismatch and asks you to decide. That's by design.
- Give real dates. The agent checks that the timeline leaves enough runway (roughly 6 weeks for T1, 4 for T2, 3 for T3/T4) and will stop rather than produce an impossible plan.
- When a launch surfaces a durable decision or assumption (a lead-time rule, a channel policy), add it to the *Decisions & notes* section of `PRODUCT-CONTEXT.md` and re-upload it.

MIT License

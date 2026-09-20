---
name: voc
description: Synthesize multi-channel customer feedback into themed Voice-of-Customer reports — by period, theme, customer, or a set of links/threads.
---

# Voice of Customer (VoC)

Synthesize customer feedback into themed findings ranked by frequency × urgency. Themes lead; quotes back them up with attribution. No solution design; no prioritization calls.

## Context (standalone)

This skill does **not** require a special agent folder.

1. Use any product / persona / roadmap / glossary context the user provides (pasted text, linked docs, or files in the current workspace).
2. If critical context is missing, ask for it (max 5 questions) — then proceed.
3. Prefer evidence the user supplies over inventing facts. Mark unknowns as TBD.
4. Write the deliverable in the conversation (and to a file only if the user asks or a path is obvious in the workspace).


## Modes

| Mode | When |
|------|------|
| **Period** | A date range / quarter — "what are customers saying?" |
| **Theme** | Deep-dive one recurring theme across channels |
| **Customer** | Roll up everything about one customer (useful before a QBR) |
| **From links** | User drops specific threads / tickets / docs |

## Procedure

1. Confirm mode and scope. Normalize fuzzy ranges ("last quarter") to explicit dates.
2. Gather feedback from channels the user configures or pastes (tickets, chat, email, BR notes, surveys, community, files). If a channel is unavailable, continue and name the gap.
3. Cluster into themes (semantic similarity). Per theme: mention count, distinct customers, urgency signals. Flag recurring themes if the user has prior history.
4. Write using `reference/synthesis-template.md`.
5. Do not invent quotes. Empty signal → say "No notable signal in this period."

## Style

Themes lead, quotes back them up, attribution is mandatory.

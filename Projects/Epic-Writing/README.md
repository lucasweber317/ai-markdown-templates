# Epic Writing — AI Project Template

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

Turns an epic brief into a concise, execution-ready product epic: a problem statement, measurable success metrics, an effort size, prioritization scores, acceptance criteria per use case, and a user-story breakdown — all in one fixed, repeatable structure. Works in any AI tool that supports projects — no technical tools needed.

---

## Why

Epics drift: they bloat past what anyone reads, blur the scope boundary, and repeat themselves. This template enforces one consistent structure with hard limits on length and section count — and stops the AI from padding, inventing names, or sneaking in solution architecture. Every epic comes out the same shape, so your team can actually compare and execute them.

---

## Setup (5 minutes)

1. In your AI tool, create a **project** (or gem, or assistant) and name it "Epic Writing."
2. Copy all of `INSTRUCTIONS.md` into the project's **instructions**.
3. Fill in `PRODUCT-CONTEXT.md` (your product, personas, and strategic themes) and upload it to the project as a file.
4. Bring a brief: paste it into the chat, or describe the initiative — the agent asks up to five clarifying questions if essentials are missing.

---

## Example prompts

- "Write an epic from this brief: [paste your brief]."
- "Draft an epic for self-service notification preferences — here's the background, scope, and success metrics."
- "This is still a rough idea — help me shape it into a brief first, then write the epic."
- "Revise the epic: engineering validated the size at L, and quiet-hours support moved out of scope."
- "The success metrics feel vague — sharpen them so they're measurable."

---

## What you'll get

A structured epic of roughly 800–1,500 words with fixed sections: general info and roles, epic details (success metrics, an S–XL size, known dependencies), prioritization scores with one-line rationale, acceptance testing criteria per use case, and a breakdown of user stories. Anything unknown — names, links, scores — is marked TBD rather than invented. Copy it into Jira, your wiki, or wherever epics live.

---

## Tips

- Vague briefs produce vague epics. The agent asks up to five clarifying questions before drafting — answering them is the highest-leverage minute of the whole process.
- TBD is a feature, not a gap: the agent won't guess team members, Jira links, or design links. Leave those for the team to fill in.
- When drafting an epic settles a durable decision or assumption, add it to the *Decisions & notes* section of `PRODUCT-CONTEXT.md` and re-upload it.

MIT License

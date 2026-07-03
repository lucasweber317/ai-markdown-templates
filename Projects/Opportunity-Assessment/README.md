# Opportunity Assessment — AI Project Template

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

Evaluates a product opportunity before you commit to writing an epic: it checks how well the problem is defined, classifies the evidence behind it, weighs impact against effort and risk, and lands on a clear recommendation — proceed, discover more, defer, or don't pursue. Works in any AI tool that supports projects — no technical tools needed.

---

## Why

Many teams jump straight from idea to epic without asking whether the opportunity deserves the investment. This template adds a disciplined gate between the two: idea → brief → assessment → decision → epic. It cuts down shiny-object prioritization, solution bias, and vague problem statements — and it forces a decision, not just analysis.

---

## Setup (5 minutes)

1. In your AI tool, create a **project** (or gem, or assistant) and name it "Opportunity Assessment."
2. Copy all of `INSTRUCTIONS.md` into the project's **instructions**.
3. Fill in `PRODUCT-CONTEXT.md` (your product, personas, and strategic themes) and upload it to the project as a file.
4. Bring an opportunity: paste a written brief into the chat, or just describe the idea — the agent structures rough ideas into a brief first.

---

## Example prompts

- "Assess this opportunity: [paste your brief]."
- "Sales keeps hearing that Northwind wants offline mode — help me turn that into a brief, then assess it."
- "Reassess the mobile load-time opportunity — we now have data showing 23% of users abandon before the app loads."
- "What evidence gaps should I close before this one is ready for an epic?"
- "Engineering gave this a preliminary M sizing — does that change your recommendation?"

---

## What you'll get

A decision-first assessment of 600–900 words: the opportunity statement, one of four recommendations with a short justification, next steps matched to that recommendation, then the supporting detail — an evidence table rating each source Strong/Moderate/Weak, the evidence gaps, impact scores across four dimensions, a high-level effort size (S–XL), and the key risks. Copy it into your wiki or wherever decisions get logged.

---

## Tips

- The agent assesses; it won't design the solution. That restraint is the point — solution bias is exactly what this gate exists to catch.
- Effort sizes without engineering validation are labeled "preliminary" on purpose. Don't strip the caveat — validate the size during epic definition.
- When an assessment confirms a durable decision or assumption, add it to the *Decisions & notes* section of `PRODUCT-CONTEXT.md` and re-upload it.

MIT License

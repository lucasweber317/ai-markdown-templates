# Epic Scoring — AI Project Template

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

Scores product epics across five dimensions — strategic fit, type, business benefits, workload cost, delivery risk — with an honest confidence level on each, then ranks your scored epics into one backlog table for quarterly planning. Works in any AI tool that supports projects — no technical tools needed.

---

## Why

Prioritization debates stall on gut feel and false precision: ten-variable spreadsheets nobody trusts, estimates nobody validated. This template applies the same simple framework to every epic, marks what's validated versus assumed, and tells you exactly what new information should trigger a re-score. It gives you data for the decision — it doesn't make the decision for you.

---

## Setup (5 minutes)

1. In your AI tool, create a **project** (or gem, or assistant) and name it "Epic Scoring."
2. Copy all of `INSTRUCTIONS.md` into the project's **instructions**.
3. Fill in `PRODUCT-CONTEXT.md` (your product, 3–5 strategic themes, personas, planning capacity) and upload it to the project as a file.
4. Score an epic: paste its text into the chat, or upload it as a file, and ask for a score.

---

## Example prompts

- "Score this epic — here's the full text from our wiki: [paste]."
- "Here are the four epics we're weighing for Q3 — score them all and rank the backlog."
- "Engineering validated the Northwind integration estimate at 120 workdays — re-score it."
- "Why did Business Benefits only score 2.0? What would move it to 3.0?"
- "Rebuild the backlog ranking table and tell me what fits in a 400-workday quarter."

---

## What you'll get

For each epic: a Prioritization section — a five-dimension score table with a confidence level and short justification per row, an overall priority score, a mandatory-vs-optional priority value, a checklist of re-score triggers, and a one-line recommendation (prioritize, validate, or defer). Copy it back into the epic wherever it lives. For the backlog: one ranked table comparing all scored epics with cumulative workload for capacity planning.

---

## Tips

- Low confidence is a feature, not a flaw — a preliminary estimate marked "Low" is more useful than fake certainty. Chase the re-score triggers instead of arguing the number.
- Keep your strategic theme names stable in `PRODUCT-CONTEXT.md`; strategic fit is the primary filter, and renaming themes mid-quarter makes scores incomparable.
- When a scoring surfaces a durable decision or assumption (a calibration rule, a sizing benchmark), add it to the *Decisions & notes* section of `PRODUCT-CONTEXT.md` and re-upload it.

MIT License

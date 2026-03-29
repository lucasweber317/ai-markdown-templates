# CLAUDE.md

This repository scores Product Epics using a structured prioritization framework to support backlog ranking and quarterly planning decisions.

It operates as a disciplined Product Manager applying consistent scoring methodology to evaluate strategic fit, business benefits, workload cost, and delivery risk.

---

## Repository Structure

- `context/` → Product knowledge (strategic themes, personas, product info)
- `memory/` → Decisions and glossary
- `examples/` → Example scoring outputs for reference
- `backlog/` → Consolidated backlog ranking table comparing all scored epics
- `claude/skills/` → Agent logic and templates

**Key context files:**
- `context/strategic-themes.md` → Strategic themes for alignment scoring
- `context/product.md` → Product positioning and terminology
- `context/personas.md` → Target customer personas

---

## Default Operating Rules

This agent works **conversationally**. The Product Manager provides an epic to score (e.g., paste from Confluence, share a file, or reference a local file) and optionally requests a backlog ranking update.

**The agent does not store scored output as files.** It outputs the Prioritization section directly in the conversation for the user to copy/paste back into the original epic document.

**When scoring epics:**

1. Read relevant context files:
   - `context/strategic-themes.md` (for strategic fit scoring)
   - `context/product.md` (for business context)
   - `memory/` (for glossary and decisions, if they exist)

2. Read the epic to be scored (provided as pasted content, a Confluence page, URL, or local file)

3. Follow instructions in `claude/skills/epic-scoring-agent.md`

4. Output the Prioritization section directly in conversation (user copies it back into the epic)

5. Optional: Update the master backlog ranking table in `backlog/`

---

## Scoring

The full scoring framework, confidence levels, output format, and scoring principles are defined in `claude/skills/epic-scoring-agent.md`. That file is the single source of truth for scoring logic.

**Primary output:** A Prioritization section (markdown) for copy/paste into epics.
**Optional output:** Master backlog ranking table in `backlog/backlog-ranking-[year].md`.

---

## Memory Map

Write durable entries only:

- `memory/assumptions.md`
- `memory/decisions.md`
- `memory/glossary.md`

Avoid duplication. Preserve confirmed decisions.

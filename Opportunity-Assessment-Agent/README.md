# Opportunity Assessment AI Agent

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

A structured AI agent for evaluating product opportunities before committing to Epic definition.

This template helps Product Managers move from vague ideas to disciplined, evidence-based decisions.

---

## What This Is

This is a lightweight framework for:

- Evaluating problem clarity
- Assessing impact and strategic alignment
- Estimating effort at a high level
- Identifying risks and constraints
- Making clear go / no-go decisions

It is intentionally analytical and skeptical.

It does not design solutions.  
It evaluates whether an opportunity deserves structured execution.

---

## Why It Exists

Many teams jump directly from idea → Epic definition without validating whether the opportunity is worth pursuing.

This template introduces a disciplined gate-keeping step:

Idea → Opportunity Brief → Assessment → Decision → Epic (if approved)

It reduces:

- Shiny-object prioritization
- Solution bias
- Vague problem statements
- Misaligned roadmap investments

---

## Getting Started

1. Download and unzip the repository.
2. Open the `Opportunity-Assessment-Agent` folder in Claude Code.
3. Replace content in `context/` with your product information.
4. Add a new file to `opportunity-briefs/`.
5. Invoke the `opportunity-agent` skill.
6. The structured assessment will be written to `opportunities/`.

---

## Capturing Ideas from Your Team

To feed this agent effectively, structure your idea intake (Jira, Notion, etc.) with these fields:

**Summary**
- One-sentence description of the opportunity

**Description**
- 🎯 What's the opportunity? (Problem or new value to create)
- 👤 Who benefits? (Specific persona or user segment)
- 📊 What signals support this? (Analytics, feedback, market data, requests)
- ⚡ Why now? (Strategic timing, urgency, competitive pressure)
- 💡 Initial thinking (optional hypothesis)

This format works for both problem-solving opportunities and value-creation ideas. Copy submitted ideas into `opportunity-briefs/` to run the assessment.

---

## Project Structure

```
Opportunity-Assessment-Agent/
├── CLAUDE.md
├── README.md
├── claude/
│   └── skills/
│       ├── opportunity-agent.md
│       └── opportunity-template.md
├── context/
│   ├── product.md
│   ├── personas.md
│   └── roadmap.md
├── opportunity-briefs/
│   └── example-brief.md
├── opportunities/
│   └── example-assessment.md
└── memory/
    ├── assumptions.md
    ├── decisions.md
    ├── glossary.md
    └── links.md
```

---

## How It Works

1. The agent reads product, persona, and roadmap context.
2. It evaluates the opportunity brief objectively.
3. It scores impact and strategic alignment.
4. It assesses effort and risk at a high level.
5. It produces a clear recommendation:
   - Proceed to Epic Definition
   - Further Discovery Required
   - Defer
   - Do Not Pursue

Context files are read-only.  
Memory is updated only when durable assumptions or decisions emerge.

---

## Design Philosophy

This template is intentionally minimal.

It separates:

- Governance (`CLAUDE.md`)
- Agent logic (`opportunity-agent.md`)
- Structure (`opportunity-template.md`)
- Context (`context/`)
- Memory (`memory/`)

It avoids:

- Overly complex scoring models
- Technical implementation detail
- Solution design during evaluation
- Over-engineered AI prompts

You are encouraged to adapt it to your operating model.

---

## Who This Is For

- Product Managers
- Product Leaders
- Strategy teams
- AI-native product organizations
- Teams seeking prioritization discipline

---

## Tool Compatibility

This framework is designed to remain lightweight and tool-agnostic.

It works seamlessly with Claude Code, but the underlying architecture can be adapted to other AI tools by:

- Using `CLAUDE.md` as system-level instructions
- Porting agent logic into your tool’s custom configuration
- Preserving the context and memory folder structure

The structure matters more than the tool.

---

## License

MIT License

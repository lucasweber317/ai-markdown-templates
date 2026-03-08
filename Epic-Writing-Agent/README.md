# AI Agent for writing Product Requirement Documents (in this example, an Epic.)

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

A lightweight, structured AI agent for drafting clear, execution-ready Product Epics using Claude Code.

This repository provides a clean, modular architecture for AI-assisted Epic writing — without over-engineering or excessive instruction bloat.

---

## What This Is

This is a structured workflow for:

- Grounding Epic writing in persistent product context
- Maintaining lightweight memory (assumptions, decisions, glossary)
- Enforcing consistent Epic structure
- Preventing repetition and scope drift
- Keeping output concise and actionable

It is intentionally minimal and adaptable.

It is not a “magic AI system.”  
It is a clean foundation you can customize.

---

## Why It’s Minimal

Many AI agent templates are overloaded with:

- Extremely long instruction files
- Redundant or conflicting rules
- Overly complex memory compression systems
- Heavy prompt engineering

This project intentionally avoids that.

Instead, it separates responsibilities clearly:

- `CLAUDE.md` → Project-level governance
- `pm-agent.md` → Epic-writing behavior
- `context/` → Product grounding
- `memory/` → Persistent knowledge
- `epic-template.md` → Output structure

You are encouraged to modify and extend it.

---

## Getting Started

1. Download and unzip the repository.
2. Open the `Epic-Writing-Agent` folder in Claude Code.
3. Replace the content in `context/` with your product information.
4. Add a brief to `epic-briefs/`.
5. Invoke the `pm-agent` skill to generate an Epic.
6. Generated Epics are written to `epics/`.

---

## Project Structure

```
Epic-Writing-Agent/
├── CLAUDE.md
├── README.md
├── claude/
│   └── skills/
│       ├── pm-agent.md
│       └── epic-template.md
├── context/
│   ├── product.md
│   ├── personas.md
│   └── roadmap.md
├── epic-briefs/
│   └── example-brief.md
├── epics/
│   └── example-epic.md
└── memory/
    ├── assumptions.md
    ├── decisions.md
    ├── glossary.md
    └── links.md
```

---

## How It Works

1. The agent reads persistent product context from `context/`.
2. It reads durable knowledge from `memory/`.
3. It transforms a brief from `epic-briefs/` into a structured Epic.
4. It writes the Epic to `epics/`.
5. It optionally updates memory with durable assumptions or decisions.

Context files are read-only.  
Memory is updated carefully.  
Epics are structured and repeatable.

---

## Customization Ideas

You can extend this architecture by:

- Modifying the Epic structure (`epic-template.md`)
- Adjusting writing constraints in `pm-agent.md`
- Adding additional agents (Strategy, UX, Release, etc.)
- Introducing structured memory entry formats
- Adding quality scoring or review passes

This is a starting architecture — not a fixed doctrine.

---

## Who This Is For

- Product Managers
- Product Leaders
- Founders
- AI-native teams
- Anyone wanting structured AI-assisted documentation

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

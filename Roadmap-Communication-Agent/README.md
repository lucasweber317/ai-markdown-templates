# AI Agent for Stakeholder Roadmap Communications

Part of the Tactical Product Management AI Workflow Suite
https://www.tacticalproductmanagement.com

A lightweight, structured AI agent for transforming product roadmaps into audience-specific presentations, one-pagers, and timelines.

This repository provides a clean, modular architecture for AI-assisted roadmap communication — without marketing hype or over-engineering.

---

## What This Is

This is a structured workflow for:

- Transforming roadmap data into executive one-pagers with strategic framing
- Creating sales enablement content with customer benefits and competitive positioning
- Generating customer-facing roadmap presentations
- Building board updates with progress metrics and resource allocation
- Maintaining consistent messaging across all stakeholder groups
- Grounding communications in persistent product context

It is intentionally minimal and adaptable.

It is not a "magic AI system."
It is a clean foundation you can customize.

---

## Why It's Minimal

Many AI agent templates are overloaded with:

- Extremely long instruction files
- Redundant or conflicting rules
- Overly complex memory systems
- Heavy prompt engineering

This project intentionally avoids that.

Instead, it separates responsibilities clearly:

- `CLAUDE.md` → Project-level governance
- `roadmap-agent.md` → Communication behavior and principles
- `context/` → Product grounding (roadmap, themes, personas)
- `memory/` → Persistent knowledge

You are encouraged to modify and extend it.

---

## Getting Started

1. Download and unzip the repository.
2. Open the `Roadmap-Communication-Agent` folder in Claude Code.
3. Replace the content in `context/` with your product roadmap and strategic themes.
4. Ask Claude to generate roadmap communications for a specific audience (e.g., "Create an executive one-pager for Q2").
5. Generated communications are written to `roadmap-outputs/`.

---

## Project Structure

```
Roadmap-Communication-Agent/
├── CLAUDE.md
├── README.md
├── claude/
│   └── skills/
│       └── roadmap-agent.md
├── context/
│   ├── product.md
│   ├── personas.md
│   ├── roadmap.md
│   └── strategic-themes.md
├── roadmap-outputs/
│   └── example-executive-onepager.md
└── memory/
    ├── assumptions.md
    ├── decisions.md
    ├── glossary.md
    └── links.md
```

---

## How It Works

1. The agent reads your product roadmap from `context/roadmap.md`.
2. It reads strategic themes from `context/strategic-themes.md`.
3. It reads target audience profiles from `context/personas.md`.
4. It transforms roadmap data into audience-appropriate communications.
5. It writes the output to `roadmap-outputs/`.
6. It optionally updates memory with durable decisions or terminology.

Context files are read-only.
Memory is updated carefully.
Communications are structured and repeatable.

---

## Audience Types Supported

**Executive / Board**
- Strategic value and business impact
- High-level timelines and milestones
- Resource allocation and progress metrics
- One-page format for quick consumption

**Sales Team**
- Customer benefits and competitive positioning
- Go-to-market timing and enablement guidance
- Scannable format with clear takeaways
- Objection handling and differentiation

**Customers**
- What's coming and why it matters
- When to expect new capabilities
- How to provide feedback
- Benefit-oriented language without jargon

---

## Customization Ideas

You can extend this architecture by:

- Adding new audience types (partners, investors, product council)
- Modifying communication templates for your organization's style
- Integrating with presentation tools (Google Slides, PowerPoint)
- Adding automated distribution workflows
- Connecting to project management tools for real-time roadmap sync
- Building version control for roadmap changes over time

This is a starting architecture — not a fixed doctrine.

---

## Who This Is For

- Product Managers
- Product Marketing Managers
- Product Operations Teams
- Chief Product Officers
- Product Leaders managing stakeholder communications
- Anyone responsible for roadmap presentations and updates

---

## Tool Compatibility

This framework is designed to remain lightweight and tool-agnostic.

It works seamlessly with Claude Code, but the underlying architecture can be adapted to other AI tools by:

- Using `CLAUDE.md` as system-level instructions
- Porting agent logic into your tool's custom configuration
- Preserving the context and memory folder structure

The structure matters more than the tool.

---

## License

MIT License

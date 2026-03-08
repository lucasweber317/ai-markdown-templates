# Product Release Tier Agent

Part of the Tactical Product Management AI Workflow Suite
https://www.tacticalproductmanagement.com

Generates tier-based Product Release Checklists: structured, role-based launch coordination without marketing fluff.

---

## Tier Framework

Launch intensity scales by tier:

- **T1** – Market-Level Launch (full cross-functional coordination)
- **T2** – Coordinated External Release (structured planning)
- **T3** – Targeted Release (lightweight coordination)
- **T4** – Minimal Communication Update (changelog-level)

Tier determines communication channels, timeline depth, and team involvement.

---

## Setup

**Before first use, customize these files with your product information:**

1. **`context/personas.md`** → Replace placeholder personas with your actual customer personas
2. **`memory/assumptions.md`** → Add your product strategy and assumptions
3. **`release-briefs/`** → Copy an example brief and customize for your release

See example briefs in `release-briefs/` (T1-T4). Search and replace all `[BRACKETED_PLACEHOLDERS]`.

---

## Usage

1. Open this folder in Claude Code
2. Invoke `/release-tier-agent` skill
3. Point to your release brief
4. Review generated checklist in `releases/`

---

## Structure

```
├── CLAUDE.md          # Agent instructions
├── claude/
│   ├── settings.local.json
│   └── skills/
│       ├── release-tier-agent.md    # Agent logic
│       └── release-tier-template.md # Output template
├── context/           # Customize these
│   ├── personas.md
│   ├── tiers.md
│   └── responsibilities.md
├── memory/
│   ├── assumptions.md
│   ├── decisions.md
│   ├── glossary.md
│   └── links.md
├── release-briefs/    # T1-T4 examples included
└── releases/          # Generated output
```

---

## License

MIT License

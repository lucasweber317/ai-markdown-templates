# Discovery Synthesis AI Agent

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

A structured AI agent that turns a set of customer or user interview notes into an evidence-based synthesis — a comparison table and per-theme write-up that feeds downstream prioritization.

---

## What This Is

A lightweight framework for:

- Comparing what multiple interviews say, side by side
- Naming the recurring themes and the signal behind each
- Backing every claim with verbatim quotes
- Tagging each theme's next step for downstream work

It surfaces signal. It does not design solutions or score priorities.

---

## Why It Exists

A single interview is already structured notes. The value shows up at scale: when you read many interviews together, patterns appear that no single conversation reveals — which theme recurs, where accounts diverge, what the installed base shares.

This agent makes that cross-interview read disciplined and repeatable:

Interviews → Synthesis → Themes (tagged) → Downstream prioritization

---

## Getting Started

1. Download and unzip the repository.
2. Open the `Discovery-Synthesis-Agent` folder in Claude Code.
3. Replace content in `context/` with your product, personas, and research themes.
4. Add your interview notes to `interview-notes/` (one file per interview — see the example for structure).
5. Tell the agent the scope and it runs the matching skill:
   - one research theme across all interviews → `synthesize-theme`
   - a slice of interviews → `compare-interviews`
   - a specific named list → `synthesize-from-list`
6. The synthesis is written to `syntheses/`.

---

## Interview Input

The agent reads interviews as one Markdown file per interview in `interview-notes/`, structured like `example-interview.md` (metadata → allocation exercise → deep-dive → verbatim quotes). The comparison matrix depends on that consistent structure.

You don't have to hand-write that file. The agent also accepts interviews from other sources and normalizes them into the note structure first:

- **A documentation or Confluence page** — share the page; the agent fetches it (or asks you to paste it if it can't be reached).
- **A URL** — point the agent at it and it retrieves the content.
- **A pasted transcript or raw notes** — paste them straight into the conversation.

Whatever the source, the agent maps it onto the standard note structure and saves it as a new file in `interview-notes/` (`<customer>-<YYYY-MM-DD>.md`) before synthesizing — so the input is reusable and the matrix stays consistent. Quotes are preserved verbatim; missing fields (no allocation exercise, no date) are flagged, never invented.

---

## Project Structure

```
Discovery-Synthesis-Agent/
├── CLAUDE.md
├── README.md
├── .claude/
│   └── skills/
│       ├── synthesize-theme.md
│       ├── compare-interviews.md
│       ├── synthesize-from-list.md
│       └── synthesis-template.md
├── context/
│   ├── product.md
│   ├── personas.md
│   └── research-themes.md
├── interview-notes/
│   └── example-interview.md
├── syntheses/
│   └── example-synthesis.md
└── memory/
    ├── assumptions.md
    ├── decisions.md
    ├── glossary.md
    └── links.md
```

---

## How It Works

1. The agent reads product, persona, and research-theme context.
2. It resolves scope and picks a skill — `synthesize-theme`, `compare-interviews`, or `synthesize-from-list`.
3. It reads the in-scope interview notes.
4. It builds a comparison table, then a per-theme section: a one-line signal, a finding × interview matrix, and 2–3 curated quotes.
5. It tags each theme's next step and lists open threads to pursue.

A single interview is not synthesized by default — it is already structured notes. Context files are read-only; memory updates only when durable.

---

## Design Philosophy

Intentionally minimal. It separates governance (`CLAUDE.md`), routing logic (the three skills), output structure (`synthesis-template.md`), context, and memory.

It avoids per-interview recaps, quote dumps, and any solution design. The matrix carries breadth; the quotes carry fidelity.

---

## Who This Is For

- Product Managers
- User Researchers
- Product Leaders
- Discovery and customer-insight teams
- AI-native product organizations
- Anyone turning raw interview notes into evidence-based themes

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

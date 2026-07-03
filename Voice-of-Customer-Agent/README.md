# Voice of Customer AI Agent

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

A structured AI agent that synthesizes customer feedback from across your channels into themed, evidence-backed reports — what customers are saying, how often, how urgently, and what to do with each signal.

---

## What This Is

A lightweight framework for:

- Scanning feedback channels for a period, a theme, or a customer
- Clustering raw feedback into themes with real quote evidence
- Tracking theme recurrence across syntheses (what keeps coming back unresolved)
- Tagging each theme's next step for downstream prioritization

It surfaces signal. It does not design solutions or make prioritization decisions.

---

## Why It Exists

Customer feedback arrives scattered — tickets, chat threads, emails, business reviews, surveys. Each item alone is an anecdote. Read together and tracked over time, they become themes with weight: how many customers, how often, how urgent, and whether the same ask keeps recurring without resolution.

Feedback channels → Synthesis → Themes (tracked in memory) → Downstream prioritization

---

## What You Can Use It For

You don't pick a "mode" — describe the scope and goal in plain language, and the agent routes to the right synthesis:

| Goal | What you say | What you get back |
|---|---|---|
| **"What are we hearing lately?"** | "Q1" or "last 90 days" | Period synthesis: top themes ranked by frequency × urgency |
| **Track one theme** | "onboarding complaints" | Theme deep-dive: every customer touching it, quotes, trend, recurrence flags |
| **Prep a business review** | "review prep for Northwind" | Per-customer rollup: open requests, commitments made, recent friction, talking points |
| **Check a churn-risk account** | "churn risk review for Contoso" | Same rollup, framed as recommended moves to de-risk renewal |
| **Synthesize specific sources** | paste links or file paths | Synthesis from just those sources — no broad scan |

---

## Getting Started

1. Download and unzip the repository.
2. Open the `Voice-of-Customer-Agent` folder in Claude Code.
3. Replace content in `context/` with your product, personas, and strategic themes.
4. List your feedback channels in `memory/feedback-channels.md` — ticket system, chat channels, email, surveys, community forum, and any files you drop into `feedback-sources/`.
5. Ask in plain English (see the table above), or drop a brief in `synthesis-briefs/`.
6. The synthesis is written to `syntheses/`; the theme index in `memory/themes.md` updates automatically.

If your tools are connected to Claude (e.g. via MCP — a ticket system, a wiki, chat search), the agent scans them directly. If not, export the relevant feedback into `feedback-sources/` and it works from files.

---

## Project Structure

```
Voice-of-Customer-Agent/
├── CLAUDE.md
├── README.md
├── .claude/
│   └── skills/
│       ├── synthesize-period.md
│       ├── synthesize-theme.md
│       ├── synthesize-customer.md
│       ├── synthesize-from-links.md
│       └── synthesis-template.md
├── context/
│   ├── product.md
│   ├── personas.md
│   └── strategic-themes.md
├── feedback-sources/
│   └── example-feedback.md
├── synthesis-briefs/
│   └── example-brief.md
├── syntheses/
│   └── example-synthesis.md
└── memory/
    ├── themes.md
    ├── customer-language.md
    ├── feedback-channels.md
    └── links.md
```

---

## How It Works

1. The agent reads product context, the channel index, and the running theme history.
2. It resolves scope and picks a skill — period, theme, customer, or explicit source list.
3. It gathers feedback from the channels in scope, quoting verbatim and attributing every quote.
4. It clusters quotes into themes, counts mentions and distinct customers, and checks each theme against the running index for recurrence.
5. It writes the synthesis — summary table, per-theme evidence, next-step tags — and updates memory.

A theme that recurs across syntheses without resolution gets flagged 🔴. A source that returns nothing gets named, not skipped silently.

---

## Design Philosophy

Intentionally minimal. It separates governance (`CLAUDE.md`), routing logic (the four skills), output structure (`synthesis-template.md`), context, and memory.

It avoids quote dumps, solution design, and prioritization calls. One mention is a data point; a pattern across customers is a theme. Themes lead; quotes carry fidelity; memory carries recurrence.

---

## Who This Is For

- Product Managers
- Customer Success and Support leads
- Voice-of-Customer and insights teams
- Founders close to their customers
- AI-native product organizations

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

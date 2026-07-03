# Sales Enablement AI Agent

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

A structured AI agent that turns product context into sales- and Customer Success–facing collateral when a feature launches: battlecards, talk tracks, and Discovery questions.

---

## What This Is

A lightweight framework for:

- Positioning a feature in the customer's language, not the product's
- Producing one-page battlecards with objections and competitive frames
- Writing short talk tracks a rep can actually speak on a call
- Generating qualifying questions matched to the persona

It packages evidence. It does not invent proof points, quotes, or roadmap promises.

---

## Why It Exists

Enablement material usually goes wrong in one of two ways: it's written feature-first instead of pain-first, or it's full of claims nobody can back. This agent enforces the discipline — grounded in product context, persona profiles, and confirmed decisions, with real customer language where you have it and an explicit gap flag where you don't.

Feature launch → Brief → Collateral (battlecard / talk track / questions) → Field

---

## Getting Started

1. Download and unzip the repository.
2. Open the `Sales-Enablement-Agent` folder in Claude Code.
3. Replace content in `context/` with your product, personas, and roadmap.
4. Record confirmed positioning calls in `memory/decisions.md` — the agent won't state dates or proof points that aren't in there.
5. Ask in plain English, or drop a brief in `enablement-briefs/`:
   - "Create an Account Executive battlecard for [feature]" → `battlecard`
   - "Give me a talk track on [feature] for an expansion call" → `talk-track`
   - "Qualifying questions for [feature], mid-market prospect" → `discovery-questions`
6. The output is written to `enablement-outputs/`.

---

## Which One Do I Need?

Pick by where you are in the deal, not by the document name:

```
What's the moment?
│
├─ Prepping for a call — I need to find out if they're a fit
│     → Discovery questions
│       5–10 qualifying questions + red flags + next-step menu
│
├─ On the call — I need to actually pitch this
│     → Talk track
│       2–3 min script: hook → problem → solution → evidence → close
│
└─ Need the cheat sheet — positioning, objections, proof at a glance
      → Battlecard
        1-pager: positioning, top objections, proof points, what not to say
```

Still unsure? Describe the situation in plain English and the agent routes you.

---

## Project Structure

```
Sales-Enablement-Agent/
├── CLAUDE.md
├── README.md
├── .claude/
│   └── skills/
│       ├── battlecard.md
│       ├── talk-track.md
│       └── discovery-questions.md
├── context/
│   ├── product.md
│   ├── personas.md
│   └── roadmap.md
├── enablement-briefs/
│   └── example-brief.md
├── enablement-outputs/
│   └── example-battlecard.md
└── memory/
    ├── assumptions.md
    ├── decisions.md
    ├── glossary.md
    └── links.md
```

---

## How It Works

1. The agent reads product, persona, and roadmap context plus confirmed decisions.
2. It confirms the two scope essentials if they're missing: audience, and new-prospect vs existing-customer call.
3. It drafts in the matching skill's fixed shape — outcome-first, customer language, evidence slots.
4. Claims are gated: no dates, proof points, or features that aren't confirmed in `memory/` or `context/`.
5. The piece is saved to `enablement-outputs/`, named by audience, format, feature, and date.

Customer quotes come from research write-ups you point it at (for example the Discovery Synthesis or Voice of Customer agents in this suite). Where no evidence exists, the agent flags the gap instead of filling it.

---

## Design Philosophy

Intentionally minimal. It separates governance (`CLAUDE.md`), the three output shapes (the skills), context, and memory.

It avoids feature-first framing, unverifiable claims, and collateral that reads like documentation. The pain leads; the evidence backs it; the ask closes it.

---

## Who This Is For

- Product Marketers
- Product Managers doing launch enablement
- Sales Enablement teams
- Founders selling their own product
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

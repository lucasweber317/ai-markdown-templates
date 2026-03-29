# AI Agent for Writing Customer-Facing Release Notes

Part of the Tactical Product Management AI Workflow Suite
https://www.tacticalproductmanagement.com

A lightweight, structured AI agent for transforming release briefs into clear, customer-focused release notes.

This repository provides a clean, modular architecture for AI-assisted release notes writing — without marketing hype or over-engineering.

---

## What This Is

This is a structured workflow for:

- Transforming technical release information into customer-friendly content
- Maintaining consistent release notes structure and tone
- Grounding writing in persistent product context
- Keeping output clear, concise, and benefit-oriented
- Handling both feature releases and bug fix releases

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
- `release-notes-agent.md` → Release notes writing behavior
- `release-notes-template.md` → Output structure
- `context/` → Product grounding
- `memory/` → Persistent knowledge

You are encouraged to modify and extend it.

---

## Getting Started

### Basic Workflow

1. Download and unzip the repository.
2. Open the `Release-Notes-Agent` folder in Claude Code.
3. Replace the content in `context/` with your product information.
4. Add a release brief to `release-notes-briefs/`.
5. Ask Claude to generate release notes (it will follow the `release-notes-agent` instructions).
6. Generated release notes are written to `release-notes/`.

### Enhanced Workflow with MCP (Recommended)

**Why use MCP?** Instead of manually copying details from Jira/Confluence into briefs, the agent can automatically fetch everything for you.

1. Set up MCP servers for your tools (Jira, Confluence, Linear, GitHub, etc.)
2. Create a minimal brief with just ticket IDs or links
3. Agent automatically fetches full context, technical specs, and metadata
4. Transforms everything into customer-friendly release notes
5. **No manual copy-paste required**

This dramatically reduces the manual work and keeps release notes in sync with your source of truth.

See the "MCP Integration" section below for setup details.

---

## Project Structure

```
Release-Notes-Agent/
├── CLAUDE.md
├── README.md
├── claude/
│   └── skills/
│       ├── release-notes-agent.md
│       └── release-notes-template.md
├── context/
│   ├── product.md
│   ├── personas.md
│   └── release-notes.md
├── release-notes-briefs/
│   └── example-brief-feature-release.md
│   └── example-brief-bug-fix.md
├── release-notes/
│   └── example-release-notes.md
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
3. It transforms a brief from `release-notes-briefs/` into customer-facing release notes.
4. It writes the release notes to `release-notes/`.
5. It optionally updates memory with durable decisions or terminology.

Context files are read-only.
Memory is updated carefully.
Release notes are structured and repeatable.

---

## MCP Integration for Automated Data Gathering

**This is the recommended workflow for reducing manual work.**

The agent can use Model Context Protocol (MCP) servers to automatically gather release information from your existing tools — eliminating the need to manually copy-paste from tickets and docs.

### Supported Integrations

- **Jira**: Fetch ticket details, sprint summaries, and issue metadata
- **Confluence**: Pull documentation, technical specs, and feature descriptions
- **Linear**: Import issue details and project updates
- **GitHub**: Access PRs, commits, and release tags
- **GitLab**: Retrieve merge requests and milestone data

### Minimal Brief Example (with MCP)

Instead of writing long, detailed briefs manually, you can provide just the essentials:

```markdown
# Release Brief: Version 2.5.0

**Version**: 2.5.0
**Release Date**: April 15, 2027
**Tickets**: JIRA-1234, JIRA-1456, JIRA-1678
```

The agent will automatically:
1. Fetch full descriptions, acceptance criteria, and comments from Jira
2. Pull technical specs from linked Confluence pages
3. Aggregate context from related tickets
4. Transform everything into customer-friendly release notes

### Workflow Comparison

**Without MCP (Manual):**
- Copy ticket descriptions from Jira → Brief
- Copy specs from Confluence → Brief
- Manually write customer benefit explanations
- ~30-60 minutes per release

**With MCP (Automated):**
- List ticket IDs in brief
- Agent fetches everything automatically
- Review and publish
- ~5-10 minutes per release

This makes release notes creation faster, more accurate, and keeps content in sync with your source of truth.

---

## Customization Ideas

You can extend this architecture by:

- Modifying the release notes structure (`release-notes-template.md`)
- Adjusting writing constraints in `release-notes-agent.md`
- Adding changelog aggregation for multi-version summaries
- Introducing automated publication workflows
- Connecting to CMS or documentation platforms
- Adding quality review passes or approval workflows

This is a starting architecture — not a fixed doctrine.

---

## Who This Is For

- Product Managers
- Product Marketers
- Technical Writers
- Product Operations Teams
- Developer Relations
- Anyone responsible for customer-facing release communications

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

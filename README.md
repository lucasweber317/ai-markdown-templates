# AI Markdown Templates

Lightweight, tool-agnostic AI agents for product management workflows.

These agents use structured markdown to help AI tools generate consistent, high-quality outputs for common product tasks.

---

## Why Use These Agents?

**Problem:** Asking AI for product artifacts (Epics, assessments, etc.) produces inconsistent results that require heavy editing.

**Solution:** These agents provide structured frameworks, persistent product context, and quality guidelines that ensure AI outputs are analytical, evidence-driven, and ready to use.

---

## Available Agents

Each agent includes:
- Structured templates and frameworks
- Context files for product information
- Agent logic for consistent outputs
- Example files and documentation

Browse the repository folders to see individual READMEs with full details.

| Agent | Purpose |
|-------|---------|
| [Discovery Synthesis Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Discovery-Synthesis-Agent) | Turn interview notes into evidence-based themes and comparisons |
| [Voice of Customer Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Voice-of-Customer-Agent) | Synthesize multi-channel customer feedback into themed reports |
| [Opportunity Assessment Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Opportunity-Assessment-Agent) | Evaluate opportunities before Epic definition |
| [Epic Writing Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Epic-Writing-Agent) | Transform opportunities into structured product Epics |
| [Epic Scoring Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Epic-Scoring-Agent) | Score and rank epics for quarterly planning |
| [Product Release Tier Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Product-Release-Tier-Agent) | Classify and communicate product releases |
| [Release Notes Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Release-Notes-Agent) | Turn release briefs into customer-facing release notes |
| [Roadmap Communication Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Roadmap-Communication-Agent) | Adapt the roadmap for executives, sales, and customers |
| [Sales Enablement Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Sales-Enablement-Agent) | Generate battlecards, talk tracks, and Discovery questions for launches |
| [Issue Triage Loop Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Issue-Triage-Loop-Agent) | Watch a GitHub repo's issues on a schedule and produce a standing triage digest (runs as a loop, not one-shot) |

---

## Not a Developer? Start Here

The agents above are built for Claude Code and similar developer tools. The **[Projects](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Projects)** folder has the same agents rebuilt for everyday AI chat tools — anything that supports projects (a workspace with custom instructions and uploaded files).

Each Project template is just three files: a 5-minute setup guide, an instructions document you paste in, and a product-context template you fill in and upload. See the [Projects README](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Projects) for setup.

---

## How to Use

1. Browse the repository folders to explore agents and their READMEs
2. Download the corresponding `.zip` file for the agent you want to use
3. Extract the zip to your working directory
4. Customize the `context/` files with your product information
5. Use the agent with your preferred AI tool (see Tool Compatibility below)

---

## Tool Compatibility

These agents work seamlessly with [Claude Code](https://claude.com/claude-code), but the underlying architecture is tool-agnostic and can be adapted to other AI tools by:

- Using `CLAUDE.md` as system-level instructions
- Porting agent logic into your tool's custom configuration
- Preserving the context and memory folder structure

The structure matters more than the tool.

---

## Benefits

- **Consistency** - Structured templates ensure uniform output quality
- **Reusability** - Define product context once, use across all assessments
- **Quality** - Built-in guidelines enforce analytical, evidence-driven thinking
- **Speed** - Generate drafts in minutes instead of hours

---

## Who This Is For

- Product Managers
- Product Leaders
- Strategy teams
- AI-native product organizations
- Teams seeking prioritization discipline

---

## License

MIT License

---

## Questions or Feedback?

Open an issue or visit [tacticalproductmanagement.com](https://www.tacticalproductmanagement.com)

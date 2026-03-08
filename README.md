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
| [Opportunity Assessment Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Opportunity-Assessment-Agent) | Evaluate opportunities before Epic definition |
| [Epic Writing Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Epic-Writing-Agent) | Transform opportunities into structured product Epics |
| [Product Release Tier Agent](https://github.com/lucasweber317/ai-markdown-templates/tree/main/Product-Release-Tier-Agent) | Classify and communicate product releases |

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

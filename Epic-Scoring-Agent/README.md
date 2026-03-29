# AI Agent for Scoring & Ranking Product Epics

Part of the Tactical Product Management AI Workflow Suite
https://www.tacticalproductmanagement.com

A lightweight, structured AI agent for scoring Product Epics using a prioritization framework to support backlog ranking and quarterly planning decisions.

This repository provides a clean, modular architecture for AI-assisted epic scoring — without subjective debates or endless spreadsheets.

---

## What This Is

This is a structured workflow for:

- Scoring epics across 5 dimensions (Strategic Fit, Type, Business Benefits, Workload Cost, Delivery Risk)
- Maintaining transparency about what's validated vs. preliminary
- Creating ranked backlogs for quarterly planning
- Providing clear re-score triggers when new information becomes available
- Grounding prioritization in persistent product strategy

It is intentionally minimal and adaptable.

It is not a "magic prioritization algorithm."
It is a clean foundation for consistent prioritization decisions.

---

## Why It's Minimal

Many prioritization frameworks are overloaded with:

- Complex weighted scoring models with 10+ variables
- False precision from unvalidated assumptions
- Black-box calculations that stakeholders don't trust
- Spreadsheets that become stale and unmaintained

This project intentionally avoids that.

Instead, it provides:

- 5 clear dimensions aligned to strategy and execution
- Explicit confidence levels for each score
- Re-score triggers so you know when to update
- Simple, transparent calculations anyone can understand

You are encouraged to modify and extend it.

---

## Getting Started

1. Download and unzip the repository.
2. Open the `Epic-Scoring-Agent` folder in Claude Code.
3. Replace the content in `context/` with your product's strategic themes.
4. Ask Claude to score an epic file (e.g., "Score the admin-ui-redesign epic").
5. Copy/paste the Prioritization section into your epic document.
6. View the master backlog ranking in `backlog/`.

---

## Project Structure

```
Epic-Scoring-Agent/
├── CLAUDE.md
├── README.md
├── claude/
│   └── skills/
│       ├── epic-scoring-agent.md
│       └── backlog-ranking-template.md
├── context/
│   ├── product.md
│   ├── personas.md
│   └── strategic-themes.md
├── examples/
│   ├── example-ui-redesign-prioritization.md
│   └── example-gdpr-compliance-prioritization.md
├── backlog/
│   └── example-backlog-ranking-2027.md
└── memory/
    ├── assumptions.md
    ├── decisions.md
    └── glossary.md
```

---

## How It Works

1. You provide the agent with an epic to score (e.g., paste from Confluence, share a URL, or point to a local file).
2. The agent reads your product context from `context/strategic-themes.md` and `context/product.md`.
3. It scores the epic across 5 dimensions with confidence levels.
4. It outputs a Prioritization section **directly in the conversation** — no files are created.
5. You copy/paste the Prioritization section back into your original epic document.
6. Optionally, the agent updates the master backlog ranking table in `backlog/`.

The agent never modifies your epic files. Scoring output is conversational — designed for copy/paste back into wherever your epics live (Confluence, Notion, Google Docs, etc.). See `examples/` for reference output.

---

## Scoring Framework

### Priority Scale (1-4)

| Value | Type | Strategic Fit | Workload | Risk |
|-------|------|---------------|----------|------|
| **4** | Mandatory: Regulatory | Critical link to strategy | < 50 workdays | Low, very likely on time |
| **3** | Mandatory: Operational | Directly linked to strategy | 50-250 workdays | Low, likely on time |
| **2** | Optional: Important | Minor link to strategy | 250-1000 workdays | Some risk/complexity |
| **1** | Optional: Nice-to-have | Little/no link to strategy | > 1000 workdays | High risk/complexity |

### Five Scoring Dimensions

**1. Strategic Fit (4.0 - 1.0)**
How well does this epic align with your product strategy?

**2. Type / Mandatory vs Optional (4.0 - 1.0)**
Is this regulatory compliance, operational continuity, or optional business value?

**3. Business Benefits (4.0 - 1.0)**
How measurable and significant are the financial or non-financial benefits?

**4. Workload Cost (4.0 - 1.0)**
What's the estimated effort in workdays or cost?

**5. Delivery Risk (4.0 - 1.0)**
What's the complexity and likelihood of on-time delivery?

---

## Example Output

### Individual Epic Prioritization Section

```markdown
## Prioritization

| Dimension | Score | Confidence | Notes |
|-----------|-------|------------|-------|
| Strategic Fit | 4.0 | ✅ High | Critical alignment with "User Experience" theme |
| Type | 3.0 | ✅ High | Mandatory: Operational continuity |
| Business Benefits | 3.0 | ⚠️ Medium | Highly measurable (pending customer data) |
| Workload Cost | 3.0 | ⚠️ LOW | Preliminary estimate - needs validation |
| Delivery Risk | 3.0 | ⚠️ Medium | Low risk based on similar past epics |

**Overall Priority Score: 3.2**
**Priority Value: 3 (Mandatory: Operational Continuity)**

### Re-score Triggers
- [ ] Tech team validates effort estimate
- [ ] Business case quantifies support ticket reduction
- [ ] Architecture review confirms approach

**Recommendation:** Proceed to quarterly planning with medium confidence; validate workload estimate before committing resources.
```

### Consolidated Backlog Ranking

A single table comparing ALL scored epics with capacity planning built in:

| Rank | Epic | Priority Score | Priority Value | Strategic Theme(s) | Workload | Cumulative | Status |
|------|------|----------------|----------------|-------------------|----------|------------|--------|
| 1 | GDPR Data Residency | 3.2 | Value 4: Regulatory | Enterprise Readiness | 105 days ⚠️ | 105 days | Needs validation |
| 2 | Admin UI Redesign | 3.2 | Value 3: Operational | User Experience | 85 days ⚠️ | 190 days | Needs validation |
| 3 | Performance Optimization | 3.0 | Value 3: Operational | Scalability | 65 days ⚠️ | 255 days | Needs validation |

See `backlog/` for a full example.

---

## Integration with Other Agents

**Workflow:**

1. **Opportunity Assessment Agent** → Evaluates if opportunity should proceed
2. **Epic Writing Agent** → Creates epic with empty Prioritization section
3. **👉 Epic Scoring Agent** → Outputs Prioritization section (copy/paste into epic) + creates ranked backlog
4. **Roadmap Communication Agent** → Communicates prioritized roadmap to stakeholders

---

## Confidence Levels Explained

- **✅ High confidence** - Based on validated data (e.g., tech team confirmed workload estimate)
- **⚠️ Medium confidence** - Based on reasonable estimates (e.g., similar to past epics)
- **⚠️ LOW confidence** - Based on assumptions, needs validation (e.g., no technical review yet)

The agent is transparent about what's known vs. preliminary to avoid false precision.

---

## When to Re-Score

Re-score an epic when:

- Technical team validates effort estimate
- Business case is quantified with customer data
- Architect confirms architecture alignment
- Delivery risk changes (new dependencies, technical unknowns resolved)
- Strategic priorities shift (new strategic theme added)

The agent lists specific re-score triggers in each scored epic.

---

## Who This Is For

- Product Managers
- Product Operations Teams
- Engineering Managers
- Portfolio Managers
- Anyone responsible for prioritization and roadmap planning
- Teams seeking consistent, transparent prioritization frameworks

---

## Benefits

**For Product Managers:**
- Consistent scoring framework across all epics
- Clear rationale for prioritization decisions
- Transparency about what's validated vs. preliminary
- Re-score triggers prevent stale estimates

**For Stakeholders:**
- Side-by-side comparison of all epics
- Strategic theme coverage visibility
- Capacity planning for quarterly roadmap
- Understand WHY epics are prioritized

**For Engineering Teams:**
- Clear triggers for when estimates need validation
- No false precision—preliminary estimates are marked as such
- Visibility into strategic rationale behind prioritization

---

## Customization Ideas

You can extend this architecture by:

- Adding custom scoring dimensions (e.g., Technical Debt, Market Timing)
- Modifying the 4-point scale to fit your organization's needs
- Integrating with project management tools (Jira, Linear, etc.)
- Adding automated workload rollups for capacity planning
- Building dashboards for strategic theme coverage
- Creating quarterly planning reports

This is a starting architecture — not a fixed doctrine.

---

## Tool Compatibility

This framework is designed to remain lightweight and tool-agnostic.

It works seamlessly with Claude Code, but the underlying architecture can be adapted to other AI tools by:

- Using `CLAUDE.md` as system-level instructions
- Porting agent logic into your tool's custom configuration
- Preserving the context and memory folder structure

The structure matters more than the tool.

---

## Notes

- This agent doesn't make final prioritization decisions—it provides data to support YOUR decisions
- Scoring is a conversation tool, not an oracle
- Strategic fit is the primary filter—even high-ROI ideas score low without strategic alignment
- Re-score as new information becomes available (validated estimates, quantified benefits)

---

## License

MIT License

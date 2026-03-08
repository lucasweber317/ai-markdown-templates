# Assumptions

> This file stores durable product or strategic assumptions that influence Epic creation.
> Avoid adding temporary notes. Only record assumptions likely to remain relevant over time.

---

## Active Assumptions

**Instructions:** Add assumptions here that are stable, validated, and will influence multiple Epics over time. Each assumption should be specific enough to guide decisions but general enough to remain relevant for months.

**Examples of good assumptions:**
- Enterprise customers prioritize native integrations over third-party connectors due to reduced security risk and simpler vendor management
- Users expect real-time sync (< 2 seconds) for collaboration features; anything slower degrades the collaborative experience
- Mobile users primarily access the product for viewing and light editing, not complex administrative workflows
- Compliance-driven customers require audit logs with 12+ month retention regardless of tier
- API rate limits of 1000 requests/hour per user are sufficient for 95% of integration use cases

**Examples of assumptions to avoid:**
- ❌ "Feature X will ship in Q2" (timing, not an assumption)
- ❌ "Users like dark mode" (too vague, not actionable)
- ❌ "Customer ABC needs SSO" (specific to one customer, not durable)

**Tips for writing good assumptions:**
- Start with validated data (customer research, usage analytics, industry standards)
- Make them falsifiable (you could prove them wrong with evidence)
- Focus on user behavior, market dynamics, or technical constraints
- Update or remove assumptions when proven wrong

---

## How to Use This File

- Add only durable assumptions.
- Avoid duplicates.
- Merge similar assumptions instead of restating them.
- Do not rewrite history without explicit approval.

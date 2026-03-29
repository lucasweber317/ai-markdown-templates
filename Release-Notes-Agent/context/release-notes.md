# Release Notes – Style Guide

**Instructions:** This document defines how release notes are structured and written for your product. Customize this to match your organization's standards and update distribution model.

---

## Tone and Voice

**Writing style:**
- Clear, concise, factual, benefit-oriented
- Technically specific with customer context
- No internal codenames or jargon
- Same tone for all releases (features and bug fixes)

**Principles:**
- Explain what customers can do now and why it matters
- Include technical requirements and affected components when relevant
- Use customer-facing language with precision
- No marketing hype without substance

---

## Update Distribution Model

**Instructions:** Define your product's deployment model below. The agent will use this to generate "Update timing" sections.

**Your deployment model:**
[Choose one and customize with your specific details]

- **Multi-stage rollout**: Updates deploy in stages (e.g., staging → production)
  - Stage 1: [Environment name] on [timing, e.g., "release day"]
  - Stage 2: [Environment name] on [timing, e.g., "2 weeks after release"]

- **Immediate rollout**: All customers receive updates simultaneously on release date

- **Customer-controlled**: Customers download and install when ready via [portal/package manager name]

- **App store distribution**: Updates published to [store name], 24-48 hour propagation expected

---

## Version Numbering Convention

**Instructions:** Define how your product versions are numbered.

**Your convention:**
[e.g., "Semantic versioning: X.Y.Z where X=major, Y=minor, Z=patch" or "Calendar versioning: YYYY.MM"]

---

## Product Naming

**Instructions:** Define canonical product names and internal codenames to avoid.

**Official product names:**
- [Full Product Name] – Use on first mention
- [Abbreviated Name] – Use after first mention

**Avoid these internal codenames in customer-facing content:**
- [Internal Codename] → Use [Official Name] instead

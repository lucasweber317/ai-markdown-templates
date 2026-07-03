# Product Context — fill this in, then upload it to your Project

The agent reads this before every release note. Short and current beats long and stale.

---

## Product

- **Product name:** (full official name, plus the short form used after first mention)
- **What it is:** (2–3 sentences)
- **Category and delivery model:** (e.g., SaaS analytics platform, on-premise, mobile app)
- **Key capabilities:** (4–6 areas, one line each — helps frame where a feature fits)
- **What it is not:** (non-goals, so release notes never overclaim)

---

## Naming and terms

- **Official names:** product, modules, components — as customers should see them.
- **Terms to avoid:** internal codename → customer-facing name; jargon → plain equivalent.
- **Preferred verbs:** e.g., "Added" for new features, "Enhanced" for improvements, "Fixed" for repairs; "Available," not "shipped."

---

## Audience

Who reads your release notes, and what that implies.

- **Primary reader:** role, technical level, what they're accountable for (e.g., administrators who relay changes to end users).
- **What they need most:** e.g., breaking changes, what to do differently, requirements.
- **What to leave out:** e.g., internal architecture, development milestones.
- **Tone:** e.g., professional and technical; conversational; enterprise-formal.

---

## Release conventions

- **Deployment model:** how updates reach customers — staged rollout (list stages and timing), immediate for all, customer-controlled download, or app store. This drives the "Update timing" section.
- **Version numbering:** e.g., semantic (X.Y.Z) or calendar (YYYY.MM).
- **Date format:** e.g., "April 15, 2027."
- **Where notes are published:** e.g., in-app changelog, docs site, customer email.

---

## Decisions & notes

Your running memory. When the agent flags something durable — a confirmed decision, a working assumption, a recurring pattern — add it here and re-upload this file. Remove entries that turn out to be wrong.

- (e.g.) **Decision:** Bug fix lines always say who was affected ("users with custom roles"), never just "various fixes."
- (e.g.) **Assumption:** Administrators are the primary readers and relay changes to end users — lead with what admins must configure or communicate.

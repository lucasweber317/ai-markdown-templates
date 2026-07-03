# Battlecard: Guided Onboarding

> Example output. (Guided Onboarding, Northwind, Contoso, and AcmeFlow are fictional placeholders.)

**Feature:** Guided Onboarding — phase 1 · **Version:** 2026-01-22

## One-line positioning

Gets a new team from signup to first value in a day — guided, self-serve setup instead of manual configuration and waiting on services.

## Customer pain it solves

- **Time-to-first-value is the deal drag.** "Getting new users productive is our biggest drag right now." — Operations Lead, Northwind (interview notes)
- **No self-serve path.** "New teams stall for weeks before they see value." — Platform Owner, Contoso (interview notes)

## Top 3 objections + responses

| Objection | Response | Evidence |
|---|---|---|
| "We already have an onboarding checklist." | A checklist documents the work; this removes it — setup steps run guided, in-product. | Pilot feedback, `memory/decisions.md` |
| "Is this an add-on or included?" | Included in the standard plan for phase 1. | Packaging decision, `memory/decisions.md` |
| "Does it cover admin setup too?" | Phase 1 covers end-user setup; admin flows are on the roadmap for the second half of the year. | `context/roadmap.md` |

## Qualifying questions

1. How long does it take a new team to get productive today?
2. Who does the setup work — the customer or your services team?
3. What happens when a team stalls during rollout?

## Competitive frame (internal only)

| Capability | Us | AcmeFlow |
|---|---|---|
| Guided in-product setup | ✓ | ✗ |
| Self-serve, no services engagement | ✓ | ✗ |
| Admin-level flows | ✗¹ | ✓ |

**Reading it:** we win on self-serve speed; AcmeFlow wins on admin depth today. ¹ Admin flows are roadmap — don't claim them.

## Proof points

- Two pilot teams cut setup from three weeks to two days (confirmed in `memory/decisions.md`).

## Don't say

- No delivery months — "second half of the year" only.
- Don't name pilot customers to prospects; use "a mid-market operations team".
- Retired term: "Setup Wizard" → say "Guided Onboarding".

## Sources

- Discovery interview notes: Northwind 2026-01-15, Contoso 2026-01-18
- Packaging decision — `memory/decisions.md`

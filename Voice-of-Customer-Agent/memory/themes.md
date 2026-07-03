# Running Themes Index

Each theme is tracked across syntheses — this file is how the agent knows an ask keeps coming back. Update after every run.

## Entry Format

```
### [Theme name]
- **First seen:** YYYY-MM-DD
- **Last seen:** YYYY-MM-DD
- **Status:** active / resolved / recurring (🔴 if recurring across 2+ quarters without resolution)
- **Frequency trend:** rising / stable / falling
- **Linked tickets/epics:** [references]
- **Notes:** one line
```

**Example entry (fictional):**

```
### Slow onboarding for new teams
- **First seen:** 2026-01-15
- **Last seen:** 2026-03-02
- **Status:** active
- **Frequency trend:** rising (3 customers in 6 weeks)
- **Linked tickets/epics:** PROD-142
- **Notes:** Same pattern across segments — time-to-first-value, not missing features.
```

## Active Themes

*(none yet — the agent adds entries after each synthesis)*

## Resolved Themes

*(move themes here when resolved; cull after two quarters of no recurrence)*

## Synthesis Log

*(one line per run: date — scope — output file)*

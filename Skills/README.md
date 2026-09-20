# Skills (standalone)

Public, `/command`-ready skills extracted from the Advanced agent packs.

Each folder is one skill: `SKILL.md` plus optional `reference/` templates. They do **not** need `context/`, `memory/`, or the full agent workspace — ask the user for product context when needed.

Download a `.zip`, unzip into your Claude Code or Cursor skills directory, then run `/skill-name`.

## Included

| Skill | Download | Blurb |
|-------|----------|-------|
| [assess-opportunity](./assess-opportunity/) | [zip](./assess-opportunity.zip) | Evaluate a product idea before you write an Epic — evidence, impact, effort, and a clear go / explore / defer / no. |
| [write-epic](./write-epic/) | [zip](./write-epic.zip) | Turn a brief or opportunity assessment into a concise, execution-ready Product Epic. |
| [epic-scoring](./epic-scoring/) | [zip](./epic-scoring.zip) | Score an Epic on strategic fit, benefits, cost, and risk — with confidence levels you can defend in planning. |
| [release-checklist](./release-checklist/) | [zip](./release-checklist.zip) | Build a T1–T4 launch checklist with role-owned, time-bound actions. |
| [release-notes](./release-notes/) | [zip](./release-notes.zip) | Turn a release brief into clear, customer-facing release notes (no hype). |
| [roadmap-comms](./roadmap-comms/) | [zip](./roadmap-comms.zip) | Rewrite your roadmap for executives, sales, or customers. |
| [battlecard](./battlecard/) | [zip](./battlecard.zip) | One-page internal sales battlecard: positioning, objections, proof, competitive frame. |
| [discovery-synthesis](./discovery-synthesis/) | [zip](./discovery-synthesis.zip) | Turn interview notes into evidence-backed themes and comparisons. |
| [voc](./voc/) | [zip](./voc.zip) | Synthesize multi-channel customer feedback into themed Voice-of-Customer reports. |

## Not included (on purpose)

- **Jira / GitHub triage loops** — need the full agent harness; see the `*-Agent` folders at the repo root.
- **Template-only files as skills** — templates live under each skill's `reference/`.

## Related

- Chat-tool packaging (3 files): [`Projects/`](../Projects/)
- Full agent workspaces: `*-Agent` folders at the repo root

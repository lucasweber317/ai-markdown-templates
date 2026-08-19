# Issue Triage Loop Agent

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

A scheduled AI agent that watches a GitHub repo's issues on its own and reports back — no one has to open a chat and ask it to check.

Unlike the other agents in this suite, this one doesn't wait to be prompted. It runs on a timer, reads what changed, and produces a digest every time.

---

## What This Is

Every run, this agent:

- Pulls issues created or updated since its last run
- Classifies each as a bug, feature, question, or other
- Flags likely duplicates against every issue it's seen before, with a confidence level and its reasoning
- Flags anything urgent by an explicit, narrow definition — never a guess
- Writes a dated digest and moves its cursor forward

It never comments, labels, or closes anything on the tracker by default. An optional write mode exists, off unless you turn it on — see [Autonomy & Safety](#autonomy--safety).

---

## Why It Exists

Every issue tracker accumulates the same quiet cost: near-duplicate reports nobody links together, an urgent one buried in a busy week, nobody with time to reread the whole backlog on a schedule. Most teams solve this by hoping someone does a triage pass. This agent is that pass, running whether or not anyone remembers to do it.

It's also a different kind of template than the rest of this suite. The other agents are one-shot: you open a chat, ask, get an answer. This one has to keep state between runs, be safe to leave unattended, and trigger itself — closer to a small piece of infrastructure than a prompt.

---

## Getting Started

1. Download and unzip the repository (or fork it — forking is easier for step 5).
2. Open the `Issue-Triage-Loop-Agent` folder in Claude Code.
3. Edit `context/repo.md` — set the repo it should watch and confirm the classification taxonomy and urgency definition fit your tracker.
4. Set `memory/last-run.md`'s cursor to a start-of-time date so the first digest covers everything currently open.
5. Add an `ANTHROPIC_API_KEY` repo secret:
   - Get a key from [console.anthropic.com](https://console.anthropic.com/settings/keys) (or use a `CLAUDE_CODE_OAUTH_TOKEN` instead if you already have one from `claude setup-token`).
   - In your repo on GitHub: **Settings → Secrets and variables → Actions → Secrets tab → New repository secret**.
   - Name: `ANTHROPIC_API_KEY`. Value: paste the key. Click **Add secret**.
6. Run the workflow once manually (`workflow_dispatch`, `write_mode: false`) before ever enabling the schedule — see [Testing before you enable the schedule](#testing-before-you-enable-the-schedule).

---

## Testing before you enable the schedule

Don't point this at a live repo and turn on the cron trigger first. Test it in order:

1. **Seed a small sandbox repo** with a few issues designed to exercise every path: two worded differently but describing the same bug (to test dedupe), one that reads as urgent by the definition in `context/repo.md`, a plain feature request, a question, a routine minor bug, and one already-closed issue (it should be excluded from the digest but still usable for dedupe comparison).
2. **Run the skill manually** inside a Claude Code chat against a fetched sample first, before any automation exists — sanity-check the classifications and duplicate calls.
3. **Trigger the workflow by hand** with `write_mode: false`, either way:
   - **GitHub UI:** go to the repo's **Actions** tab → click **Issue Digest** in the left sidebar → click the **Run workflow** dropdown (top right) → leave `write_mode` unchecked → click **Run workflow**.
   - **CLI:** `gh workflow run issue-digest.yml --repo <owner>/<repo> -f write_mode=false`
   
   Either way, wait ~1–2 minutes, then open the run to check it succeeded, and check the repo for a new commit adding a file under `digests/` and updating `memory/last-run.md`'s cursor and run log.
4. **If you want write mode**, trigger it again the same way with `write_mode: true` (check the box in the UI, or `-f write_mode=true` on the CLI) against the sandbox repo only, and check the actual comment/label it posts on the duplicate issues before trusting it anywhere real.
5. **Only then** rely on the `schedule:` cron trigger — it needs no further setup, it's already in the workflow file and will start firing daily once you stop manually testing.

---

## Real example

*(This section gets replaced with an actual digest from a real run, once you've tested this end to end — see `digests/example-digest.md` for a placeholder in the meantime.)*

---

## Project Structure

```
Issue-Triage-Loop-Agent/
├── CLAUDE.md
├── README.md
├── .github/
│   └── workflows/
│       └── issue-digest.yml
├── .claude/
│   └── skills/
│       ├── issue-triage.md
│       └── digest-template.md
├── context/
│   └── repo.md
├── memory/
│   ├── last-run.md
│   ├── known-issues.md
│   └── decisions.md
├── digests/
│   └── example-digest.md
└── scripts/
    ├── fetch-issues.sh
    └── apply-actions.sh
```

---

## How It Works

1. `scripts/fetch-issues.sh` uses the `gh` CLI to pull every issue created or updated since the cursor in `memory/last-run.md`.
2. Claude Code runs headlessly, following the `issue-triage` skill, and reads that fetched batch.
3. It classifies, dedupe-checks, and flags urgency using only the definitions in `context/repo.md` — nothing inferred beyond them.
4. It writes a digest to `digests/` and advances the cursor and dedupe index in `memory/`.
5. The workflow commits those updated files back to the repo — state has to persist somewhere, since the runner that executed it disappears the moment the job ends.
6. If write mode is on, a separate small script (not Claude itself) posts the comments/labels Claude proposed.

This all runs inside a GitHub Actions workflow (`.github/workflows/issue-digest.yml`), triggered on a `schedule:` cron and also manually via `workflow_dispatch` for testing.

---

## Autonomy & Safety

This agent runs unattended against a live tracker, so its default behavior is deliberately narrow:

- **Read-only by default.** It only ever writes to `digests/` and `memory/`. No comments, labels, or closes unless you explicitly turn on write mode.
- **Duplicates are flagged, not merged.** Every duplicate call carries a confidence level and a one-line reason — a human decides what to do with it.
- **Urgency is a fixed, narrow list**, not a judgment call — see `context/repo.md`. This is meant to stay boring and predictable, not clever.
- **Write mode never lets the agent call GitHub's write API directly.** It emits a small `proposed-actions.json`; a separate, reviewable script (`scripts/apply-actions.sh`) is what actually posts anything. If something goes wrong, the blast radius is one script, not free-form agent behavior.

Running this costs GitHub Actions minutes and Claude API usage on a recurring schedule — check both before you turn on the cron trigger for real.

---

## Design Philosophy

This template separates:

- Governance (`CLAUDE.md`)
- Agent logic (`issue-triage.md`)
- Output structure (`digest-template.md`)
- Context (`context/`)
- Memory (`memory/`)
- The trigger itself (`.github/workflows/`)

That last one is the actual difference from the rest of this suite — everything else here follows the same separation of concerns as the on-demand agents, but a loop also needs a reason to wake up and a place for its state to survive between runs.

You are encouraged to adapt the trigger to your own setup — a local `crontab`/`launchd` entry running `claude -p` on your own machine works the same way if you'd rather not use GitHub Actions; you'll just need to handle authentication and scheduling yourself instead of relying on Actions secrets and a cron block.

---

## Who This Is For

- Product Managers who own a GitHub-issues-based backlog (not everyone has a formal idea portal — this works with what most teams already have)
- Product Leaders who want a standing triage pass without adding it to someone's weekly checklist
- Teams comfortable adding one GitHub Actions secret and reviewing a YAML file

---

## Tool Compatibility

The scheduling in this template is genuinely tied to having something that can wake itself up — GitHub Actions here, or your own cron job. A chat-only AI Project (Claude/ChatGPT Projects, Gemini Gems) has no way to trigger itself, so the [Project version](../Projects/Issue-Triage-Loop/) of this agent is honestly reframed as **on-demand**: you ask it to check, rather than it checking on its own. If you want the actual loop, you need Claude Code plus a scheduler.

---

## License

MIT License

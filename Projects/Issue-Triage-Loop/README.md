# Issue Triage Loop Agent

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

Checks a GitHub repo's issues for anything new, flags likely duplicates and anything urgent, and gives you a digest. Works in any AI tool that supports projects — no technical tools needed.

**Important difference from the developer version:** this template can't check on its own. Chat-based AI Projects have no way to wake themselves up on a schedule — so instead of a standing loop, this is an on-demand check: you ask, it looks, you decide what to do about it. If you want the actual self-running loop, that needs the [Claude Code version](../../Issue-Triage-Loop-Agent/) plus GitHub Actions.

---

## Why

Every issue tracker accumulates near-duplicate reports nobody linked, and the occasional urgent one that sits for a week because nobody did a triage pass. This template is that pass — you just have to remember to ask for it, since it can't remind itself.

---

## Setup (5 minutes)

1. In your AI tool, create a **project** (or gem, or assistant) and name it "Issue Triage."
2. Copy all of `INSTRUCTIONS.md` into the project's **instructions**.
3. Fill in `PRODUCT-CONTEXT.md` (which repo, your classification taxonomy, your urgency definition) and upload it to the project as a file.
4. Give the agent access to your repo's issues — paste in the issue list (title + body + labels + dates works fine copied from GitHub), or paste a link if your tool can fetch it.

---

## Example prompts

- "Here are all issues updated since August 1st — check for duplicates and anything urgent: [paste]."
- "Check this batch for likely duplicates of anything we've seen before: [paste new issues + your running known-issues list from Decisions & notes]."
- "Anything here look urgent by our definition?"
- "We just confirmed #38 and #41 were the same bug — help me note that so we don't miss the pattern next time."

---

## What you'll get

A digest: a summary count by category (bug/feature/question/other), anything urgent with the reason it was flagged, likely duplicates with a confidence level and a one-line reason, and the full new-issue list grouped by category. Same shape as the developer version's output — just produced when you ask instead of on a timer.

---

## Tips

- This agent can't remember issues between conversations on its own — paste your running list of previously-seen issue titles from the *Decisions & notes* section of `PRODUCT-CONTEXT.md` each time you want duplicate-checking against history, not just against the current batch.
- It never suggests closing, merging, or commenting on anything — it flags, you decide. That restraint is the point, same as the developer version.
- If you find yourself running this every single day at the same time, that's the signal you've outgrown the Project version — the [Claude Code + GitHub Actions version](../../Issue-Triage-Loop-Agent/) does that part for you.

MIT License

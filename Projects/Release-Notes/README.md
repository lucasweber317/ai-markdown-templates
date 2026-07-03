# Release Notes — AI Project Template

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

Turns a technical release brief — or just a pasted pile of tickets — into clear, customer-facing release notes: what's new, why it matters, and when customers get it. Works in any AI tool that supports projects — no technical tools needed.

---

## Why

Release notes fail in two directions: engineers write changelogs full of internal jargon, and marketers write hype with no substance. This template holds the middle — factual, benefit-oriented notes in a consistent structure, release after release — and stops the AI from inventing features, metrics, or promises.

---

## Setup (5 minutes)

1. In your AI tool, create a **project** (or gem, or assistant) and name it "Release Notes."
2. Copy all of `INSTRUCTIONS.md` into the project's **instructions**.
3. Fill in `PRODUCT-CONTEXT.md` (your product, audience, and release notes conventions) and upload it to the project as a file.
4. Start a chat and paste in a release brief — or the raw ticket descriptions for the release.

---

## Example prompts

- "Here's the release brief for version 2.5.0 — write the release notes."
- "This is a bug-fix-only release, version 2.4.3. Ticket summaries below."
- "Write release notes from these three tickets. Release date is April 15; production follows two weeks later."
- "Northwind's admin team complained our last notes were too vague — redo this draft with more specifics."
- "Combine the March and April notes into one monthly changelog entry."

---

## What you'll get

Ready-to-publish release notes: an "Update timing" section first (built from your deployment model), then bold-named features in short benefit-first paragraphs with any plan or browser requirements, then a fixed-issues list that says what was broken and who was affected, plus an optional note for version skips or breaking changes. Copy it into your changelog, docs site, or customer email.

---

## Tips

- The agent refuses to draft without a version number, a release date, and a clear scope — give it those up front and it's one pass instead of three.
- Paste the ugly source material as-is (tickets, commit messages, engineer notes); translating it into customer language is the agent's job, not yours.
- When a draft settles a durable choice — a date format, a naming rule, a tone call — add it to the *Decisions & notes* section of `PRODUCT-CONTEXT.md` and re-upload it.

MIT License

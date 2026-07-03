# AI Project Templates (non-technical versions)

Part of the Tactical Product Management AI Workflow Suite  
https://www.tacticalproductmanagement.com

These are the same AI agents as the developer versions — rebuilt for everyday AI chat tools. No coding tools required.

---

## How These Differ From the Developer Versions

The original agents are folders of Markdown files designed for Claude Code and similar developer tools: they read context from disk, route between skill files, and write their own memory. If that sentence means nothing to you — these versions are for you.

Each Project template is just **three files**:

| File | What you do with it |
|---|---|
| `README.md` | Read it — 5-minute setup guide with example prompts |
| `INSTRUCTIONS.md` | Paste it into your AI project's instructions |
| `PRODUCT-CONTEXT.md` | Fill it in, then upload it to the project as a file |

They work with **any AI tool that supports projects** — a workspace with custom instructions and uploaded files that every conversation inside it can see. Most major tools have one; the name just varies (Claude and ChatGPT call it *Projects*, Google Gemini calls it *Gems*, others say *assistants* or *agents*). That's the whole trick.

---

## Setup (same for every template)

1. In your AI tool, create a **project** (or gem, or assistant) and name it after the agent.
2. Open `INSTRUCTIONS.md`, copy everything, and paste it into the project's **instructions** field.
3. Fill in `PRODUCT-CONTEXT.md` with your product's details and **upload it** to the project as a file.
4. Start chatting — example prompts are in each template's README.

**No projects feature in your tool?** It still works: paste `INSTRUCTIONS.md` as your first message, attach (or paste) your filled-in `PRODUCT-CONTEXT.md`, and carry on in that conversation.

**Keeping it current:** the developer versions maintain "memory" files automatically. Here, the equivalent lives at the bottom of your `PRODUCT-CONTEXT.md` — a *Decisions & notes* section. When the agent flags something worth keeping, add it there and re-upload the file. Two minutes a month keeps the agent sharp.

---

## License

MIT License

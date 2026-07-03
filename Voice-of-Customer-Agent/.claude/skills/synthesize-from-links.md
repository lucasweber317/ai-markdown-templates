---
name: synthesize-from-links
description: Synthesize customer feedback from an explicit list of provided sources (links, files, pasted text) — no broader channel scan.
---

# Skill: synthesize-from-links

**When to use:** the user hands over specific sources — links, file paths, or pasted text — instead of a scope to scan. Right for capturing a single hot conversation or pre-meeting prep from known sources. **Not** for date-range or theme scans — use the other skills for those.

---

## Procedure

1. **Auto-generate a brief.** If the user pasted sources directly, save a brief to `synthesis-briefs/ad-hoc-[YYYY-MM-DD].md` recording the source list, the lens (infer or "general"), and any pasted text verbatim. This preserves the audit trail.

2. **Fetch each source.**
   - Links to connected tools (wiki pages, tickets, shared files) → fetch directly.
   - Local paths → read from `feedback-sources/` or wherever they point.
   - Pasted text → treat as one source, attributed `Pasted by user (date)`.
   - A source that can't be retrieved → **flag it** in the synthesis with the link and ask the user to paste the excerpt. Never fabricate content for an unfetchable source.

3. **Cluster and synthesize** with the same theme logic as `synthesize-period`, accepting that the input set is small and bounded. One cluster is fine — produce a single-theme write-up.

4. **Write the synthesis** using `.claude/skills/synthesis-template.md`, with two adjustments:
   - The **Sources scanned** section lists the explicit sources with fetch status (✅ retrieved / ⚠️ flagged / ❌ failed).
   - Add a **source coverage** note to the executive summary if anything failed, so the reader knows the synthesis covers a subset.

   Save to `syntheses/voc-adhoc-[slug]-[YYYY-MM-DD].md`.

5. **Update memory** — only if a cluster has 2+ distinct customers or matches an existing theme; a single small thread usually shouldn't grow `memory/themes.md`.

---

## Style

Same rules as everywhere: attribution mandatory, gaps named, no fabrication. Partial retrieval still produces a synthesis — with the misses listed, not hidden.

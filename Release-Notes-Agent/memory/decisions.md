# Decisions

**Instructions:** Record confirmed decisions about release notes format, style, or process. These are "locked in" choices that should be followed consistently.

---

## Format Decisions

Example entries:

- **Date format**: Use "Month Day, Year" (e.g., "March 15, 2027") not MM/DD/YYYY or ISO format
- **Version references**: Always include product name with version (e.g., "DataSync 2.5" not just "2.5")
- **Section order**: Update timing (first) → New features → Improvements → Note (if applicable)

---

## Style Decisions

Example entries:

- **Tone**: Professional and technical, not casual or overly friendly
- **Feature descriptions**: Focus on what customers can do, not how we built it
- **Technical detail level**: Include requirements and affected components, skip internal architecture
- **Breaking changes**: Always highlight in bold with "BREAKING CHANGE:" prefix

---

## Content Decisions

Example entries:

- **Bug fix descriptions**: Be specific about what was broken and who was affected, not just "various fixes"
- **Feature naming**: Use customer-facing capability names, not internal project codenames
- **Requirements**: Always mention licensing, plan tiers, or platform requirements when applicable
- **Future functionality**: Never mention roadmap items or "coming soon" features

---

## Process Decisions

Example entries:

- **Review workflow**: All release notes reviewed by PM and one technical writer before publication
- **Publication timing**: Release notes published 48 hours before update deployment
- **Changelog maintenance**: Auto-aggregate release notes into master changelog monthly

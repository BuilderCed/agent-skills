# AGENTS.md

This repository contains cross-platform AI agent skills for regulated industries and underserved markets.

## Build & Test

```bash
# Lint all skills
bash scripts/audit-all.sh

# Install a skill locally (Claude Code)
npx skills add . --skill eu-ai-act-compliance -a claude-code

# Install a skill locally (Cursor)
npx skills add . --skill eu-ai-act-compliance -a cursor
```

## Conventions

- Skills are in `skills/{category}/{skill-name}/SKILL.md`
- Each SKILL.md must have YAML frontmatter with: name, description, version, last-updated, platforms, dependencies
- Keep SKILL.md + references/ under 3K tokens total
- Write instructions in natural language (no tool-specific syntax)
- Include graceful degradation for platforms without terminal access
- Legal/regulatory skills must include a disclaimer

## Structure

```
skills/{category}/{skill-name}/
├── SKILL.md          # Core skill (cross-platform)
├── references/       # Schemas, checklists, templates
├── claude/           # Claude Code extensions (hooks, agents)
├── cursor/           # Cursor adaptations
└── tests/            # Test cases
```

## Do NOT

- Reference platform-specific tools (Read, Write, Bash) in SKILL.md core
- Include copyrighted content (AFNOR standards, EN norms)
- Exceed 3K tokens per skill + references
- Skip the disclaimer on regulatory skills

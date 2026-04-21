# CLAUDE.md — agent-skills

Cross-platform AI agent skills repo. 31 skills across 15 categories.

## Structure

- Skills in `skills/{category}/{skill-name}/SKILL.md`
- References in `skills/{category}/{skill-name}/references/`
- Audit script: `bash scripts/audit-all.sh`

## Conventions

- SKILL.md must have YAML frontmatter (name, description, version, last-updated, platforms, dependencies, update_sources, license)
- Max 3K tokens per skill (SKILL.md + references/)
- Natural language instructions only (no platform-specific tools like Read, Write, Bash)
- Disclaimer required on regulatory/legal/financial skills
- French for FR-only skills, English for global skills

## Commands

```bash
# Audit all skills
bash scripts/audit-all.sh

# Install a skill locally
npx skills add . --skill eu-ai-act-compliance -a claude-code
```

## Do NOT

- Add platform-specific tool references (Read, Write, Edit, Bash) in SKILL.md core
- Include copyrighted content (AFNOR, proprietary norms)
- Exceed 3K tokens per skill
- Skip disclaimers on regulatory skills
- Reference skills that don't exist in the repo

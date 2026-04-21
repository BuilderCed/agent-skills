# Contributing

Thank you for contributing to agent-skills. This guide covers the process.

## Quick Start

1. Fork the repo
2. Create a branch: `feat/skill-name`
3. Copy `SKILL-TEMPLATE.md` to `skills/{category}/{skill-name}/SKILL.md`
4. Write your skill following the template
5. Run `bash scripts/audit-all.sh` to validate
6. Submit a PR using the template

## Skill Requirements

### Must Have
- Valid YAML frontmatter (all fields from template)
- Natural language instructions (no platform-specific tool references)
- Works on at least 3 platforms without modification
- Under 3K tokens total (SKILL.md + references/)
- Disclaimer on regulatory/legal skills

### Must NOT Have
- Hardcoded secrets or API keys
- Prompt injection patterns
- Invisible Unicode characters
- Instructions to send data to external services
- Copyrighted content (AFNOR standards, proprietary data)
- Platform-specific tool syntax in core SKILL.md

## Review Process

1. **Automated**: CI runs lint + security scan
2. **Human**: 1 reviewer minimum (CODEOWNERS by category)
3. **Merge**: Squash merge to main

## Categories

Place your skill in the most specific category:

| Category | For |
|----------|-----|
| `compliance` | EU/international regulations |
| `metier-fr` | French professional skills |
| `security` | Skill and code security |
| `eval` | Agent evaluation and testing |
| `meta` | Skills about skills |
| `data` | Open data and data processing |
| `documents` | Document extraction and validation |
| `offline` | Offline-first and frugal computing |
| `africa` | African market patterns |
| `devops` | CI/CD and deployment |
| `api` | API design and documentation |
| `testing` | Testing strategies |
| `accessibility` | Accessibility auditing |
| `workflow` | Workflow automation |
| `finance` | Financial and trading |
| `seo` | SEO and AI visibility |
| `education` | Learning content |
| `governance` | Skill lifecycle management |
| `privacy` | Data privacy and PII |
| `devsecops` | Supply chain security |
| `sovereignty` | Data sovereignty |
| `resilience` | API resilience and cost |

## License

By contributing, you agree that your contributions will be licensed under MIT.

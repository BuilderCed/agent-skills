## What

<!-- Brief description of the change -->

## Checklist

- [ ] SKILL.md follows SKILL-TEMPLATE.md structure
- [ ] YAML frontmatter has all required fields (name, description, version, last-updated, platforms, dependencies, update_sources, license)
- [ ] Disclaimer present on regulatory/legal/financial skills
- [ ] No prompt injection patterns
- [ ] No hardcoded secrets or API keys
- [ ] No copyrighted content (AFNOR, proprietary data)
- [ ] Total size < 3K tokens (SKILL.md + references/)
- [ ] Instructions in natural language (no platform-specific tool references)
- [ ] All referenced files exist (references/, data dependencies)
- [ ] `scripts/audit-all.sh` passes locally
- [ ] find-skills index updated (if new skill)
- [ ] README.md updated (if new skill)

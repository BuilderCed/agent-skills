# Skill Security Checklist

Quick-reference checklist for auditing SKILL.md files before installation.

## Critical (BLOCK if found)

- [ ] No prompt injection patterns ("ignore previous", "new instructions", "you are now")
- [ ] No hardcoded API keys or secrets (sk-, pk_, AKIA, ghp_, Bearer)
- [ ] No data exfiltration URLs (POST to unknown endpoints)
- [ ] No private key material (-----BEGIN)
- [ ] No SSRF targets (localhost, 169.254.169.254, internal IPs)

## Warning (FLAG for review)

- [ ] No invisible Unicode characters (zero-width, RTL override)
- [ ] No base64/hex encoded instructions in prose
- [ ] No vendor lock-in patterns ("always use [specific service]")
- [ ] No "disable security" / "skip validation" / "bypass" instructions
- [ ] Permissions match stated purpose (doc skill doesn't need terminal)

## Quality

- [ ] Valid YAML frontmatter (name, version, description, platforms)
- [ ] Skill name matches directory name
- [ ] Version follows semver
- [ ] last-updated is valid date, not in future
- [ ] Total size < 3K tokens (SKILL.md + references/)
- [ ] All URLs use HTTPS
- [ ] Referenced packages/repos exist and are active

# Security Policy

## Reporting Vulnerabilities

If you discover a security vulnerability in a skill (injection pattern, secret leakage, behavioral manipulation), please:

1. **Do NOT open a public issue**
2. Email: security@builderced.dev (or open a private security advisory on GitHub)
3. Include: skill name, vulnerability type, reproduction steps

We will respond within 48 hours and publish a fix within 7 days for critical issues.

## Scope

This policy covers:
- Prompt injection patterns in SKILL.md files
- Hardcoded secrets or credentials
- Unicode/homoglyph tricks
- Behavioral manipulation attempts
- Data exfiltration instructions
- Supply chain references to compromised packages

## Known Ecosystem Risks

- 341 malicious skills were removed from ClawHub in 2026 (ClawHavoc incident, source: dev.to/haoyang_pang article, Feb 2026)
- 283 skills were found leaking API keys (Snyk scan, source: same article)
- SkillsMP (96K+ skills) has no security audit process

## Our Protections

- `scripts/audit-all.sh` scans every skill on every PR
- GitHub Actions CI runs injection + secret detection
- Human review required for every merge
- `skill-security-audit` skill documents all 15 known attack vectors

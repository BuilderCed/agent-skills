# agent-skills

Cross-platform AI agent skills for **regulated industries** and **underserved markets**.

While [awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) covers React, Cloudflare, and Supabase, we cover **EU compliance, French accounting, African mobile money, and agent security** — the verticals nobody else does well.

## Install

```bash
# Install all skills
npx skills add BuilderCed/agent-skills --all

# Install a specific skill
npx skills add BuilderCed/agent-skills --skill eu-ai-act-compliance

# Install for a specific platform
npx skills add BuilderCed/agent-skills --skill eu-ai-act-compliance -a cursor

# Via GitHub CLI
gh skills install BuilderCed/agent-skills
```

Works with: Claude Code, Codex, Gemini CLI, Cursor, Copilot, Windsurf, Cline, and 30+ other agents.

## Skills

### Compliance & Regulatory (5 skills)

| Skill | Description | Geo |
|-------|-------------|-----|
| [`eu-ai-act-compliance`](skills/compliance/eu-ai-act-compliance/) | Risk classification, Article 50 disclosures, audit trails | EU |
| [`eu-nis2-compliance`](skills/compliance/eu-nis2-compliance/) | Cybersecurity obligations for essential entities | EU |
| [`eu-dora-compliance`](skills/compliance/eu-dora-compliance/) | Digital resilience for financial sector | EU |
| [`gdpr-data-protection`](skills/compliance/gdpr-data-protection/) | DPIA, data rights, processing records | EU |
| [`eu-regulatory-router`](skills/compliance/eu-regulatory-router/) | Identifies which regulations apply to your system | EU |

### French Professional & Personal (7 skills)

| Skill | Description | Geo |
|-------|-------------|-----|
| [`fr-comptabilite`](skills/metier-fr/fr-comptabilite/) | PCG, journal entries, VAT, tax returns | FR |
| [`fr-fec-generator`](skills/metier-fr/fr-fec-generator/) | FEC file generation (DGFIP compliant) | FR |
| [`fr-facturation-electronique`](skills/metier-fr/fr-facturation-electronique/) | E-invoicing Factur-X/UBL (mandatory 2026) | FR |
| [`fr-fiscalite-particulier`](skills/metier-fr/fr-fiscalite-particulier/) | Personal income tax, brackets, deductions, crypto | FR |
| [`fr-droit-immobilier`](skills/metier-fr/fr-droit-immobilier/) | Leases, diagnostics, housing law, renovation aids | FR |
| [`fr-fiscalite-investissement`](skills/metier-fr/fr-fiscalite-investissement/) | PEA, CTO, assurance-vie, PER, capital gains | FR |

### Security & Quality (2 skills)

| Skill | Description | Geo |
|-------|-------------|-----|
| [`skill-security-audit`](skills/security/skill-security-audit/) | Audit skills for injection, secrets, manipulation | Global |
| [`devsecops-supply-chain`](skills/devsecops/devsecops-supply-chain/) | SBOM generation, SLSA compliance | Global |

### Agent Evaluation (1 skill)

| Skill | Description | Geo |
|-------|-------------|-----|
| [`agent-eval-framework`](skills/eval/agent-eval-framework/) | Evaluate agent outputs with rubrics | Global |

### Privacy (1 skill)

| Skill | Description | Geo |
|-------|-------------|-----|
| [`pii-detection`](skills/privacy/pii-detection/) | Detect PII in code and data | Global |

### Data & Documents (2 skills)

| Skill | Description | Geo |
|-------|-------------|-----|
| [`fr-open-data-explorer`](skills/data/fr-open-data-explorer/) | Exploit data.gouv.fr (SIRENE, DVF, DPE) | FR |
| [`invoice-processing`](skills/documents/invoice-processing/) | Invoice extraction and validation | Global |

### Offline & Africa (2 skills)

| Skill | Description | Geo |
|-------|-------------|-----|
| [`offline-first-development`](skills/offline/offline-first-development/) | Offline-first patterns (IndexedDB, sync) | Global |
| [`africa-mobile-money`](skills/africa/africa-mobile-money/) | M-Pesa, Orange Money, Wave, MTN MoMo | Africa |

### Infrastructure (3 skills)

| Skill | Description | Geo |
|-------|-------------|-----|
| [`api-resilience-patterns`](skills/resilience/api-resilience-patterns/) | Circuit breakers, retry, rate limiting | Global |
| [`context-engineering`](skills/meta/context-engineering/) | Context management patterns for agents | Global |
| [`skill-lifecycle-management`](skills/governance/skill-lifecycle-management/) | Versioning, freshness, deprecation | Global |

### Meta (1 skill)

| Skill | Description | Geo |
|-------|-------------|-----|
| [`find-skills`](skills/meta/find-skills/) | Discover the right skill for your task | Global |

## Architecture

```
skills/{category}/{skill-name}/
├── SKILL.md              ← Core (works on ALL platforms)
├── references/            ← Schemas, checklists, templates
├── claude/                ← Claude Code extensions (hooks, agents)
├── cursor/                ← Cursor adaptations
└── tests/                 ← Test cases
```

Every `SKILL.md` works standalone on any platform. Platform-specific extensions (hooks, agents, MCP) enrich but never condition.

## Quality

- **Security scanned**: Every PR checked for injection patterns, secrets, and manipulation
- **Freshness tracked**: Monthly CI flags skills >90 days without update
- **Cross-platform tested**: Installation verified on 3+ platforms
- **Size-budgeted**: Each skill < 3K tokens (ETH Zurich: larger = worse performance)
- **References verified**: Official URLs checked monthly

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Skills must:
1. Follow [SKILL-TEMPLATE.md](SKILL-TEMPLATE.md)
2. Pass security audit (no injection, no secrets, no manipulation)
3. Stay under 3K tokens (SKILL.md + references/)
4. Include disclaimer on regulatory/legal skills
5. Work on at least 3 platforms without platform-specific syntax

## License

MIT

# agent-skills

[English](README.md) | [Francais](README.fr.md)

Skills IA cross-platform pour les **industries reglementees** et les **marches sous-servis**.

Alors que [awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) couvre React, Cloudflare et Supabase, nous couvrons la **conformite EU, la comptabilite francaise, le mobile money africain et la securite des agents** — les verticaux que personne ne fait bien.

## Installer

```bash
# Installer tous les skills
npx skills add BuilderCed/agent-skills --all

# Installer un skill specifique
npx skills add BuilderCed/agent-skills --skill fr-fiscalite-particulier

# Via GitHub CLI
gh skills install BuilderCed/agent-skills
```

Compatible avec : Claude Code, Codex, Gemini CLI, Cursor, Copilot, Windsurf, Cline et 30+ autres agents.

## Skills

### Conformite & Reglementation EU (6 skills)

| Skill | Description |
|-------|-------------|
| [`eu-ai-act-compliance`](skills/compliance/eu-ai-act-compliance/) | Classification de risque, disclosure Article 50, audit trail |
| [`eu-ai-act-content-disclosure`](skills/compliance/eu-ai-act-content-disclosure/) | Marquage contenu IA, metadonnees, templates de disclosure |
| [`eu-nis2-compliance`](skills/compliance/eu-nis2-compliance/) | Obligations cybersecurite pour entites essentielles |
| [`eu-dora-compliance`](skills/compliance/eu-dora-compliance/) | Resilience numerique pour le secteur financier |
| [`gdpr-data-protection`](skills/compliance/gdpr-data-protection/) | DPIA, droits des personnes, registre des traitements |
| [`eu-regulatory-router`](skills/compliance/eu-regulatory-router/) | Identifie quelles regulations s'appliquent a votre systeme |

### Metiers & Vie Quotidienne France (9 skills)

| Skill | Description | Pour qui |
|-------|-------------|----------|
| [`fr-comptabilite`](skills/metier-fr/fr-comptabilite/) | PCG, ecritures, TVA, liasse fiscale | Comptables, entrepreneurs |
| [`fr-fec-generator`](skills/metier-fr/fr-fec-generator/) | Generation FEC conforme DGFIP (18 champs) | Comptables |
| [`fr-facturation-electronique`](skills/metier-fr/fr-facturation-electronique/) | Factur-X/UBL, obligatoire sept 2026 | Toutes entreprises |
| [`fr-fiscalite-particulier`](skills/metier-fr/fr-fiscalite-particulier/) | IR, tranches, reductions, crypto, IFI | Particuliers |
| [`fr-fiscalite-investissement`](skills/metier-fr/fr-fiscalite-investissement/) | PEA, CTO, AV, PER, plus-values | Investisseurs |
| [`fr-droit-immobilier`](skills/metier-fr/fr-droit-immobilier/) | Bail, diagnostics, DPE, MaPrimeRenov | Proprietaires, locataires |
| [`fr-notariat`](skills/metier-fr/fr-notariat/) | Frais notaire, succession, donation, SCI | Particuliers, familles |
| [`fr-recherche-emploi`](skills/metier-fr/fr-recherche-emploi/) | CV, lettre VOUS-MOI-NOUS, STAR, negociation | Candidats |

### Securite & Qualite (3 skills)

| Skill | Description |
|-------|-------------|
| [`skill-security-audit`](skills/security/skill-security-audit/) | Audit de skills : injection, secrets, manipulation |
| [`skill-quality-linter`](skills/security/skill-quality-linter/) | Validation structure, frontmatter, portabilite |
| [`devsecops-supply-chain`](skills/devsecops/devsecops-supply-chain/) | SBOM, SLSA, securite chaine d'approvisionnement |

### Evaluation & Qualite Agent (2 skills)

| Skill | Description |
|-------|-------------|
| [`agent-eval-framework`](skills/eval/agent-eval-framework/) | Evaluation d'outputs agents avec rubriques |
| [`tech-debt-detector`](skills/eval/tech-debt-detector/) | Detection de dette technique dans le code IA |

### Donnees & Documents (3 skills)

| Skill | Description |
|-------|-------------|
| [`fr-open-data-explorer`](skills/data/fr-open-data-explorer/) | Exploiter data.gouv.fr (SIRENE, DVF, DPE) |
| [`invoice-processing`](skills/documents/invoice-processing/) | Extraction et validation de factures |
| [`contract-analysis`](skills/documents/contract-analysis/) | Analyse de contrats, clauses, risques |

### Vie Privee & Souverainete (2 skills)

| Skill | Description |
|-------|-------------|
| [`pii-detection`](skills/privacy/pii-detection/) | Detection de donnees personnelles (PII) |
| [`data-sovereignty-patterns`](skills/sovereignty/data-sovereignty-patterns/) | Transferts transfrontaliers, SCC, Schrems II |

### Offline & Afrique (3 skills)

| Skill | Description |
|-------|-------------|
| [`offline-first-development`](skills/offline/offline-first-development/) | Apps offline-first (IndexedDB, sync) |
| [`africa-mobile-money`](skills/africa/africa-mobile-money/) | M-Pesa, Orange Money, Wave, MTN MoMo |
| [`africa-ussd-development`](skills/africa/africa-ussd-development/) | Apps USSD pour telephones basiques |

### Infrastructure (3 skills)

| Skill | Description |
|-------|-------------|
| [`api-resilience-patterns`](skills/resilience/api-resilience-patterns/) | Circuit breakers, retry, rate limiting |
| [`context-engineering`](skills/meta/context-engineering/) | Gestion optimale du contexte agent |
| [`skill-lifecycle-management`](skills/governance/skill-lifecycle-management/) | Versioning, fraicheur, deprecation |

### Meta (1 skill)

| Skill | Description |
|-------|-------------|
| [`find-skills`](skills/meta/find-skills/) | Decouvrir le bon skill (repo + ecosysteme) |

## Architecture

```
skills/{categorie}/{nom-skill}/
├── SKILL.md              ← Coeur (fonctionne sur TOUTES les plateformes)
├── references/            ← Schemas, checklists, templates
├── claude/                ← Extensions Claude Code (hooks, agents)
├── cursor/                ← Adaptations Cursor
└── tests/                 ← Cas de test
```

Chaque `SKILL.md` fonctionne seul sur n'importe quelle plateforme. Les extensions enrichissent mais ne conditionnent pas.

## Contribuer

Voir [CONTRIBUTING.md](CONTRIBUTING.md). Les skills doivent :
1. Suivre le [SKILL-TEMPLATE.md](SKILL-TEMPLATE.md)
2. Passer l'audit securite
3. Rester sous 3K tokens
4. Inclure un disclaimer sur les skills reglementaires
5. Fonctionner sur au moins 3 plateformes

## Licence

MIT

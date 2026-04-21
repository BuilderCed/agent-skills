#!/bin/bash
# Audit all skills in the repository for structure, security, and freshness
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS_DIR="$REPO_ROOT/skills"
ERRORS=0
WARNINGS=0
PASSED=0

echo "=== Agent Skills Audit ==="
echo "Date: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo ""

# Find all SKILL.md files
while IFS= read -r skill_file; do
  skill_name=$(basename "$(dirname "$skill_file")")
  category=$(basename "$(dirname "$(dirname "$skill_file")")")

  # 1. Check frontmatter exists
  if ! head -1 "$skill_file" | grep -q "^---"; then
    echo "[ERROR] $category/$skill_name: Missing YAML frontmatter"
    ERRORS=$((ERRORS + 1))
    continue
  fi

  # 2. Check required fields
  for field in name description version last-updated platforms license; do
    if ! grep -q "^${field}:" "$skill_file"; then
      echo "[ERROR] $category/$skill_name: Missing field '$field'"
      ERRORS=$((ERRORS + 1))
    fi
  done

  # 3. Security: check for injection patterns (skip security-audit skill which documents these)
  if [ "$skill_name" != "skill-security-audit" ]; then
    if grep -qiE "(ignore previous|new instructions:|you are now|forget everything|disregard|override.*instructions)" "$skill_file"; then
      echo "[BLOCK] $category/$skill_name: Prompt injection pattern detected"
      ERRORS=$((ERRORS + 1))
    fi

    # 4. Security: check for hardcoded secrets
    if grep -qE "(sk-[a-zA-Z0-9]{20,}|pk_[a-zA-Z0-9]{20,}|AKIA[A-Z0-9]{16}|ghp_[a-zA-Z0-9]{36}|-----BEGIN)" "$skill_file"; then
      echo "[BLOCK] $category/$skill_name: Hardcoded secret detected"
      ERRORS=$((ERRORS + 1))
    fi
  fi

  # 5. Check size (warn if > 800 lines)
  lines=$(wc -l < "$skill_file")
  if [ "$lines" -gt 800 ]; then
    echo "[WARN]  $category/$skill_name: $lines lines (max recommended: 800)"
    WARNINGS=$((WARNINGS + 1))
  fi

  # 6. Check freshness (warn if last-updated > 90 days ago)
  last_updated=$(grep "^last-updated:" "$skill_file" | grep -oE "[0-9]{4}-[0-9]{2}-[0-9]{2}" | head -1)
  if [ -n "$last_updated" ]; then
    last_ts=$(date -j -f "%Y-%m-%d" "$last_updated" +%s 2>/dev/null || echo "0")
    now_ts=$(date +%s)
    days_old=$(( (now_ts - last_ts) / 86400 ))
    if [ "$days_old" -gt 90 ]; then
      echo "[STALE] $category/$skill_name: $days_old days old"
      WARNINGS=$((WARNINGS + 1))
    fi
  fi

  # 7. Check name matches directory
  declared_name=$(grep "^name:" "$skill_file" | sed 's/name: *//' | tr -d '"' | tr -d "'" | xargs)
  if [ "$declared_name" != "$skill_name" ]; then
    echo "[WARN]  $category/$skill_name: name field '$declared_name' != directory '$skill_name'"
    WARNINGS=$((WARNINGS + 1))
  fi

  PASSED=$((PASSED + 1))

done < <(find "$SKILLS_DIR" -name "SKILL.md" -type f)

echo ""
echo "=== Results ==="
echo "Skills audited: $PASSED"
echo "Errors: $ERRORS"
echo "Warnings: $WARNINGS"
echo ""

if [ "$ERRORS" -gt 0 ]; then
  echo "VERDICT: FAIL ($ERRORS errors)"
  exit 1
else
  echo "VERDICT: PASS ($WARNINGS warnings)"
  exit 0
fi

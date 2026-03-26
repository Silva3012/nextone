# Task Input — ST-008

## Context

You are working on the NextOne Flutter application.

Before doing anything, read:

/Users/ntsikasilvano/Desktop/development/nextone/ai

INCLUDING:
- AGENTS.md
- CODEX.md
- ARCHITECTURE.md
- all previous ST-00X validation outputs
- ST-008 checklist

IMPORTANT:
You MUST operate on:
/Users/ntsikasilvano/Desktop/development/nextone/

---

## Objective

Perform final cleanup, validation, and architecture alignment.

This is the final step of the refactor.

---

## Scope

You MUST:

1. Execute all items in:
   → ST-008 checklist

2. For each item:
   - either FIX it
   - OR update ARCHITECTURE.md to reflect intentional deviation

3. Keep changes minimal and safe

---

## Instructions

### Phase 1 — Fix & Align
- Resolve all checklist items
- Apply consistent architecture decisions

### Phase 2 — Codegen
- Run build_runner if needed
- Ensure generated files align

### Phase 3 — Cleanup
- remove dead code
- run:
  dart fix --apply

### Phase 4 — Validation
- dart analyze
- flutter test
- flutter build apk --debug

---

## Constraints

- DO NOT introduce new features
- DO NOT change business logic
- DO NOT change UI behaviour
- DO NOT break tests
- DO NOT expand scope

---

## Validation Expectations

- architecture matches codebase
- no analyzer issues
- all tests pass
- builds succeed

---

## Output Format

Return STRICT JSON:

{
  "step": "ST-008",
  "files_modified": [],
  "files_deleted": [],
  "summary": "",
  "decisions": [],
  "notes": [],
  "validation_checks": []
}
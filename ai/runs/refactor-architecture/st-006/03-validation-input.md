# Validation Task — ST-006

You are the Validator Agent for this repository.

Follow AGENTS.md and CLAUDE.md strictly.

Validate ST-006 only.

Do not validate later steps.
Do not propose unrelated refactors.
Use ARCHITECTURE.md as the source of truth.

## Task

Validate whether ST-006 has been completed correctly.

ST-006 = Regenerate auto_route outputs after consolidation/refactor.

This includes:
- ensuring `lib/app/router/app_router.dart` still references valid current page paths
- regenerating `lib/app/router/app_router.gr.dart`
- ensuring generated routing imports align with the current `lib/` structure
- preserving route names, navigation flow, and current route intent
- keeping scope limited to routing/code-generation recovery

## Validation Criteria

Check whether the output aligns with ARCHITECTURE.md and ST-006 intent:

- `lib/app/router/app_router.gr.dart` exists and is regenerated
- generated routing imports point to valid current page files
- no package:nextone_core, package:models, or packages/ references remain in routing/generated scope
- `lib/app/router/app_router.dart` remains consistent with current route definitions
- current routes still resolve to the expected page widgets
- no obvious scope leakage into ST-007 or ST-008
- routing-related analysis passes
- any remaining analyzer issues are outside ST-006 scope and documented

## Inputs

Read and use these files:

1. Architecture definition  
   → ./ARCHITECTURE.md

2. Approved refactor plan  
   → ./ai/runs/refactor-architecture/02-claude-plan.json

3. ST-005 validation result  
   → ./ai/runs/refactor-architecture/st-005/04-claude-validation-output.json

4. ST-006 codex input  
   → ./ai/runs/refactor-architecture/st-006/01-codex-input.md

5. ST-006 codex output  
   → ./ai/runs/refactor-architecture/st-006/02-codex-output.json

6. Current repository state  
   → Inspect the codebase directly to verify claims where possible

## Output Format

Return STRICT JSON only:

{
  "step": "ST-006",
  "status": "approved|approved_with_notes|rejected",
  "summary": "",
  "issues": [],
  "fix_instructions": [],
  "confidence": "low|medium|high"
}
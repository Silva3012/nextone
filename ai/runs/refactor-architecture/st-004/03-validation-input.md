# Validation Task — ST-004

You are the Validator Agent for this repository.

Follow AGENTS.md and CLAUDE.md strictly.

Validate ST-004 only.

Do not validate later steps.
Do not propose unrelated refactors.
Use ARCHITECTURE.md as the source of truth.

## Task

Validate whether ST-004 has been completed correctly.

ST-004 = Remove flutter_hooks from project dependencies.

This includes:
- removing flutter_hooks from pubspec.yaml
- updating pubspec.lock
- confirming no source files in lib/ import flutter_hooks
- confirming no classes extend HookWidget
- preserving current app behaviour
- not introducing unrelated code changes

## Validation Criteria

Check whether the output aligns with ARCHITECTURE.md and ST-004 intent:

- flutter_hooks is no longer present in pubspec.yaml
- flutter_hooks is no longer present in pubspec.lock as a direct dependency
- no file in lib/ imports flutter_hooks
- no class in lib/ extends HookWidget
- no obvious scope leakage into ST-005 or later steps
- flutter pub get succeeded
- dart analyze has no errors
- any remaining analyzer infos are outside ST-004 scope and documented

## Inputs

Read and use these files:

1. Architecture definition  
   → ./ARCHITECTURE.md

2. Approved refactor plan  
   → ./ai/runs/refactor-architecture/02-claude-plan.json

3. ST-003 validation result  
   → ./ai/runs/refactor-architecture/st-003/04-claude-validation-output.json

4. ST-004 worker input  
   → ./ai/runs/refactor-architecture/st-004/01-input.md

5. ST-004 worker output  
   → ./ai/runs/refactor-architecture/st-004/02-worker-output.json

6. Current repository state  
   → Inspect the codebase directly to verify claims where possible

## Output Format

Return STRICT JSON only:

{
  "step": "ST-004",
  "status": "approved|approved_with_notes|rejected",
  "summary": "",
  "issues": [],
  "fix_instructions": [],
  "confidence": "low|medium|high"
}
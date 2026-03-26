# Validation Task — ST-008

You are the Validator Agent for this repository.

Follow AGENTS.md and CLAUDE.md strictly.

Validate ST-008 only.

This is the final refactor validation step.

Do not propose new feature work.
Do not reopen closed scope unless the implementation is inconsistent with ARCHITECTURE.md or prior decisions.

Use ARCHITECTURE.md as the source of truth.

## Task

Validate whether ST-008 has been completed correctly.

ST-008 = Final cleanup, architecture alignment, and full project validation.

This includes:
- resolving carry-forward notes from ST-001 through ST-007
- either fixing architectural deviations or updating ARCHITECTURE.md to reflect intentional decisions
- removing dead code and stale files
- finalizing mapper strategy
- fixing remaining lifecycle/deprecation issues in scope
- ensuring code generation remains valid
- confirming final project health through analyze, tests, and debug builds

## Validation Criteria

Check whether the output aligns with ARCHITECTURE.md and the ST-008 checklist:

- ARCHITECTURE.md matches the actual codebase structure and intentional decisions
- `lib/nextone.dart` is either documented intentionally or removed consistently
- artist DTO folder structure is aligned
- repository implementation/interface paths are aligned with the chosen architecture
- service interface paths are aligned with the chosen architecture
- dead mapper extension files and exports are removed if DTO factories are now the single mapping surface
- models barrel no longer mixes mapper concerns incorrectly
- loading_splash lifecycle issue is fixed safely
- profile_setup listener cleanup issue is fixed correctly
- deprecated `.withOpacity()` usages addressed in the targeted files
- DI generation still works after final alignment
- no obvious unintended business logic or UI behaviour drift was introduced
- `dart analyze` passes with 0 issues
- `flutter test` passes
- `flutter build apk --debug` passes
- `flutter build ios --no-codesign --debug` passes
- no obvious unresolved carry-forward note remains from previous subtasks

## Inputs

Read and use these files:

1. Architecture definition  
   → ./ARCHITECTURE.md

2. Approved refactor plan  
   → ./ai/runs/refactor-architecture/02-claude-plan.json

3. ST-001 validation result  
   → ./ai/runs/refactor-architecture/st-001/04-claude-validation-output.json

4. ST-002 validation result  
   → ./ai/runs/refactor-architecture/st-002/05-claude-validation-output.json

5. ST-003 validation result  
   → ./ai/runs/refactor-architecture/st-003/04-claude-validation-output.json

6. ST-004 validation result  
   → ./ai/runs/refactor-architecture/st-004/04-claude-validation-output.json

7. ST-005 validation result  
   → ./ai/runs/refactor-architecture/st-005/04-claude-validation-output.json

8. ST-006 validation result  
   → ./ai/runs/refactor-architecture/st-006/04-claude-validation-output.json

9. ST-007 validation result  
   → ./ai/runs/refactor-architecture/st-007/04-claude-validation-output.json

10. ST-008 checklist  
   → ./ai/runs/refactor-architecture/st-008/00-checklist.md

11. ST-008 worker input  
   → ./ai/runs/refactor-architecture/st-008/01-input.md

12. ST-008 worker output  
   → ./ai/runs/refactor-architecture/st-008/02-worker-output.json

13. Current repository state  
   → Inspect the codebase directly to verify claims where possible

## Output Format

Return STRICT JSON only:

{
  "step": "ST-008",
  "status": "approved|approved_with_notes|rejected",
  "summary": "",
  "issues": [],
  "fix_instructions": [],
  "confidence": "low|medium|high"
}
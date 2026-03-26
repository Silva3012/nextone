# Validation Task — ST-007

You are the Validator Agent for this repository.

Follow AGENTS.md and CLAUDE.md strictly.

Validate ST-007 only.

Do not validate later steps.

Do not propose unrelated refactors.

Use ARCHITECTURE.md as the source of truth.

## Task

Validate whether ST-007 has been completed correctly.

ST-007 = Add BLoC unit tests for the consolidated architecture.

This includes:

- adding tests for AuthBloc

- adding tests for ArtistDashboardBloc

- adding tests for OnboardingAiBloc if present and practical

- using mocked dependencies only

- keeping changes scoped to tests and test-related dependencies

- not changing production behavior

## Validation Criteria

Check whether the output aligns with ARCHITECTURE.md and ST-007 intent:

- test files exist for the targeted blocs

- test coverage matches real current bloc events/states and does not invent APIs

- mocked interface types are used instead of real implementations where practical

- no real network, Supabase, or Firebase calls occur in tests

- test-related dependency changes are minimal and justified

- the documented bloc_test conflict is accurately reflected and the chosen fallback is reasonable

- `flutter test test/application` passes

- no obvious scope leakage into ST-008 or unrelated production code

- any remaining issues are documented and are outside ST-007 scope

## Inputs

Read and use these files:

1. Architecture definition  

   → ./ARCHITECTURE.md

2. Approved refactor plan  

   → ./ai/runs/refactor-architecture/02-claude-plan.json

3. ST-006 validation result  

   → ./ai/runs/refactor-architecture/st-006/04-claude-validation-output.json

4. ST-007 worker input  

   → ./ai/runs/refactor-architecture/st-007/01-input.md

5. ST-007 worker output  

   → ./ai/runs/refactor-architecture/st-007/02-worker-output.json

6. Current repository state  

   → Inspect the codebase directly to verify claims where possible

## Output Format

Return STRICT JSON only:

{

  "step": "ST-007",

  "status": "approved|approved_with_notes|rejected",

  "summary": "",

  "issues": [],

  "fix_instructions": [],

  "confidence": "low|medium|high"

}
# Task Input — ST-007

## Context

You are working on the NextOne Flutter application.

Before doing anything, read and follow all relevant files under:

/Users/ntsikasilvano/Desktop/development/nextone/ai

At minimum, read:
- /Users/ntsikasilvano/Desktop/development/nextone/ai/agents/AGENTS.md
- /Users/ntsikasilvano/Desktop/development/nextone/ai/agents/CODEX.md
- /Users/ntsikasilvano/Desktop/development/nextone/ARCHITECTURE.md
- /Users/ntsikasilvano/Desktop/development/nextone/ai/runs/refactor-architecture/02-claude-plan.json
- /Users/ntsikasilvano/Desktop/development/nextone/ai/runs/refactor-architecture/st-006/04-claude-validation-output.json

This project uses a centralised layered architecture inside `lib/`, guided by Clean Architecture principles.

Current status:
- ST-001 is complete and approved_with_notes
- ST-002 is complete and approved_with_notes
- ST-003 is complete and approved_with_notes
- ST-004 is complete and approved_with_notes
- ST-005 is complete and approved_with_notes
- ST-006 is complete and approved
- dependency injection and routing generation are working again
- this task is only ST-007

---

## Objective

Add BLoC unit tests for the consolidated architecture.

The goal of this step is to improve confidence in application-layer behaviour by testing core BLoC state transitions using mocked dependencies only.

---

## Scope

Work only in areas directly related to BLoC testing:

- `test/`
- `pubspec.yaml` (only if dev dependencies are needed)
- test helper/mock files if needed

Target BLoCs:
- `AuthBloc`
- `ArtistDashboardBloc`
- `OnboardingAiBloc` if present and testable with current interfaces

Do NOT modify:
- production UI/widget behaviour
- repository logic
- DTOs/models
- routing
- dependency injection design
- theme/styling
- production business logic unless a tiny testability fix is absolutely required

Do NOT intentionally perform ST-008 cleanup in this step.

---

## Instructions

1. Inspect the current BLoCs under `lib/application/`.
2. Identify constructor dependencies for:
   - `AuthBloc`
   - `ArtistDashboardBloc`
   - `OnboardingAiBloc` (if present and practical)
3. Add test dependencies if missing:
   - `bloc_test`
   - `mocktail`
4. Create tests under `test/application/` or the closest structure already used by this repo.

At minimum, cover these scenarios where they match the real current BLoC API:

### AuthBloc
- successful login emits the expected loading → success/authenticated path
- failed login emits the expected loading → error path
- no-role / needs-role-selection path if this exists in current logic
- forgot password success path if currently implemented and practical to test
- sign-out path if currently implemented and practical to test

### ArtistDashboardBloc
- successful track fetch emits loading → loaded
- failed track fetch emits loading → error

### OnboardingAiBloc
- success path if the current bloc is stable and mockable
- failure path if practical

5. Mock interface types, not concrete implementations, wherever possible.
6. Use the current real event/state names from the codebase.
7. Keep assertions aligned with actual state shapes and order.
8. Do not invent nonexistent states or events.

---

## Constraints

- Do NOT rewrite bloc logic just to make tests easier unless absolutely necessary
- Do NOT hit real network/services
- Do NOT use real Supabase or Firebase calls
- Prefer mocking abstract dependencies/interfaces
- Keep the step focused on tests and minimal test-only dependency additions
- If a bloc is too tightly coupled or unstable to test cleanly right now, document that clearly instead of forcing a bad test

---

## Validation Expectations

After applying changes, the project should be in a state where:
- test dependencies resolve successfully
- bloc tests compile
- `flutter test` passes for the added tests
- tests use mocked dependencies
- no production behaviour is changed unintentionally

Known non-test analyzer infos outside ST-007 scope do not need to be fixed here unless directly blocking tests.

---

## Output Format

Return STRICT JSON only in this shape:

{
  "step": "ST-007",
  "files_modified": [
    {
      "path": "",
      "purpose": ""
    }
  ],
  "summary": "",
  "test_coverage": [],
  "notes": [],
  "validation_checks": []
}
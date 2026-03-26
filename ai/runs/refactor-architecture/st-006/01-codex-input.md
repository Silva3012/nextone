
# Task Input — ST-006

## Context

You are working on the NextOne Flutter application.

Before doing anything, read and follow all relevant files under:

/Users/ntsikasilvano/Desktop/development/nextone/ai

At minimum, read:
- /Users/ntsikasilvano/Desktop/development/nextone/ai/agents/AGENTS.md
- /Users/ntsikasilvano/Desktop/development/nextone/ai/agents/CODEX.md
- /Users/ntsikasilvano/Desktop/development/nextone/ARCHITECTURE.md
- /Users/ntsikasilvano/Desktop/development/nextone/ai/runs/refactor-architecture/02-claude-plan.json
- /Users/ntsikasilvano/Desktop/development/nextone/ai/runs/refactor-architecture/st-005/04-claude-validation-output.json

This project uses a centralised layered architecture inside `lib/`, guided by Clean Architecture principles.

Current status:
- ST-001 is complete and approved_with_notes
- ST-002 is complete and approved_with_notes
- ST-003 is complete and approved_with_notes
- ST-004 is complete and approved_with_notes
- ST-005 is complete and approved_with_notes
- dependency injection generation is working again
- this task is only ST-006

---

## Objective

Regenerate `auto_route` outputs after package consolidation and refactor, ensuring routing imports and generated router files align with the current `lib/` structure.

The goal of this step is to restore routing generation cleanly and ensure route definitions still resolve against the refactored page paths.

---

## Scope

Work only in routing/code-generation-related areas:

- `lib/app/router/`
- any page imports in `lib/app/router/app_router.dart` that must be updated to current paths
- generated router files produced by build_runner

Do NOT modify:
- UI/widget behaviour
- repository logic
- DTOs/models
- dependency injection design
- business logic
- theme/styling
- architecture docs

Do NOT intentionally perform ST-007 or ST-008 in this step.

---

## Instructions

1. Inspect `lib/app/router/app_router.dart`.
2. Update any stale imports so all route/page references use valid current `package:nextone/...` paths.
3. Delete stale generated router output if necessary:
   - `lib/app/router/app_router.gr.dart`
4. Run build_runner to regenerate routing:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

5. Confirm `lib/app/router/app_router.gr.dart` is regenerated successfully.
6. Confirm generated route imports point to valid current paths.
7. Confirm all currently defined routes still resolve to the expected page widgets.
8. Keep changes minimal and limited to routing/code-generation recovery.

---

## Constraints

* Do NOT redesign route definitions
* Do NOT change route names, navigation flow, or guards unless required for compilation
* Do NOT perform unrelated cleanup
* Preserve current routing intent
* Keep scope strictly limited to ST-006

---

## Validation Expectations

After applying changes, the project should be in a state where:

* `lib/app/router/app_router.gr.dart` exists and is regenerated
* routing-related generated imports compile
* route definitions resolve against the current refactored page paths
* `dart analyze` no longer shows routing-generation-related missing-file errors
* no obvious new architecture drift is introduced

Known non-routing issues outside ST-006 scope do not need to be solved here unless directly blocking route generation.

---

## Output Format

Return STRICT JSON only in this shape:

```json
{
  "step": "ST-006",
  "files_modified": [
    {
      "path": "",
      "purpose": ""
    }
  ],
  "files_deleted": [],
  "summary": "",
  "notes": [],
  "validation_checks": []
}
```
# Task Input — ST-005

You are working on the **NextOne Flutter application**.

## Read First

Before making any changes, read and follow these files:

- `./ARCHITECTURE.md`
- `./ai/agents/AGENTS.md`
- `./ai/agents/CODEX.md`
- `./ai/runs/refactor-architecture/02-claude-plan.json`
- `./ai/runs/refactor-architecture/st-004/04-claude-validation.json`

## Project Context

This project uses a **centralised layered architecture inside `lib/`**, guided by **Clean Architecture principles**.

### Current status
- ST-001 is complete and `approved_with_notes`
- ST-002 is complete and `approved_with_notes`
- ST-003 is complete and `approved_with_notes`
- ST-004 is complete and `approved_with_notes`
- `flutter_hooks` has been removed
- Current analyzer errors are due to missing generated files
- This task is **only ST-005**

---

## Objective

Update dependency injection configuration for the consolidated `lib/` structure and regenerate `injectable` / `build_runner` outputs.

The goal of this step is to:
- restore generated DI files
- remove analyzer errors caused by missing generated files related to injection and code generation

---

## Scope

Work **only** in areas directly related to dependency injection and code generation.

### Allowed
- `lib/core/injection/`
- any files with `@injectable`, `@lazySingleton`, `@singleton`, `@module`, or related injectable annotations that require import/path correction
- generated files produced by build_runner that are necessary for DI regeneration
- `pubspec.lock` only if updated by tooling

### Do not modify
- UI/widget behaviour
- repository business logic
- DTO mapping logic
- routing definitions beyond what build_runner regenerates automatically in later steps
- theme/styling
- app feature logic

### Explicit exclusions
Do **not** intentionally perform:
- ST-006
- ST-007
- ST-008

---

## Instructions

1. Inspect the current dependency injection setup under `lib/core/injection/`.
2. Update any stale imports caused by package consolidation so DI-related files use the correct `package:nextone/...` imports.
3. Check all `@injectable`, `@lazySingleton`, `@singleton`, and `@module` annotated files that participate in DI and ensure they reference valid current paths.
4. Delete stale generated DI output if necessary:
   - `lib/core/injection/injection.config.dart`
5. Run build_runner to regenerate code:

    flutter pub run build_runner build --delete-conflicting-outputs

6. Confirm `injection.config.dart` is regenerated successfully.
7. Confirm DI-related generated imports use the current consolidated package paths.
8. Keep changes minimal and scoped to DI/codegen recovery.

---

## Constraints

- Do **not** redesign DI architecture
- Do **not** move files unless required for correct import resolution
- Do **not** combine cleanup work from later subtasks
- Do **not** rewrite repositories/services unless required to satisfy injectable generation
- Preserve current runtime behaviour
- Keep this step focused on DI regeneration only

---

### Critical Behaviour Rules

- Only fix DI-related imports and generation issues
- If a file compiles but has non-DI issues, leave it unchanged
- Do not attempt to fix unrelated analyzer errors
- Do not refactor code structure beyond import corrections
- If build_runner fails, prioritise fixing import paths before making any structural changes

---

## Validation Expectations

After applying changes, the project should be in a state where:

- `lib/core/injection/injection.config.dart` exists and is regenerated
- DI-related generated files compile
- `dart analyze` no longer shows DI/codegen-related missing-file errors caused by stale injection generation
- `configureDependencies()` still resolves from the expected location
- no obvious new architecture drift is introduced

### Known exception
Non-DI generated file issues that belong to ST-006 can remain if they are strictly routing-related.

---

## Execution Strategy

- First: Fix imports in DI-related files
- Second: Remove stale generated files
- Third: Run build_runner
- Fourth: Validate output without expanding scope

Do not proceed to additional fixes beyond DI regeneration.

-----

## Output Rules

Return **STRICT JSON only**.
Do **not** include markdown fences.
Do **not** include commentary outside the JSON.

Use exactly this shape:

{
  "step": "ST-005",
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
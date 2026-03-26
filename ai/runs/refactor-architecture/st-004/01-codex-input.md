# Task Input — ST-004

## Context

You are working on the NextOne Flutter application.

Read and follow these files before making changes:
- ./ARCHITECTURE.md
- ./ai/agents/AGENTS.md
- ./ai/agents/CODEX.md
- ./ai/runs/refactor-architecture/02-claude-plan.json
- ./ai/runs/refactor-architecture/st-003/04-claude-validation.json

This project uses a centralised layered architecture inside `lib/`, guided by Clean Architecture principles.

Current status:
- ST-001 is complete and approved_with_notes
- ST-002 is complete and approved_with_notes
- ST-003 is complete and approved_with_notes
- HookWidget usage has been removed from targeted files
- flutter_hooks imports no longer remain in lib/
- this task is only ST-004

---

## Objective

Remove `flutter_hooks` from the project dependencies now that hook-based widgets and imports have been eliminated.

This step should be minimal and dependency-focused.

---

## Scope

Work only in:
- `pubspec.yaml`
- `pubspec.lock` (if regenerated)

You may also verify repository state to ensure no remaining `flutter_hooks` imports exist, but do not modify unrelated source files in this step.

Do NOT modify:
- UI/widget logic
- repository logic
- DTOs/models
- routing
- dependency injection
- architecture docs
- theme/styling
- business logic

Do NOT perform ST-005, ST-006, ST-007, or ST-008 work.

---

## Instructions

1. Confirm there are no remaining `flutter_hooks` imports in `lib/`.
2. Confirm no class extends `HookWidget`.
3. Remove `flutter_hooks` from `pubspec.yaml`.
4. Regenerate dependencies so `pubspec.lock` is updated if needed.
5. Keep all other dependencies unchanged unless required by package resolution.
6. Do not make unrelated code changes.

---

## Constraints

- Minimal change only
- Do not touch source code unless absolutely required for dependency resolution
- Do not combine cleanup work from later subtasks
- Preserve current behaviour
- Keep scope strictly dependency-related

---

## Validation Expectations

After applying changes, the project should be in a state where:
- `flutter_hooks` is no longer present in `pubspec.yaml`
- `flutter pub get` succeeds
- `dart analyze` has no errors
- no source file in `lib/` imports `flutter_hooks`
- no class in `lib/` extends `HookWidget`

Any known unrelated info-level analyzer messages outside ST-004 scope do not need to be fixed here.

---

## Output Format

Return STRICT JSON only in this shape:

{
  "step": "ST-004",
  "files_modified": [
    {
      "path": "",
      "purpose": ""
    }
  ],
  "summary": "",
  "notes": [],
  "validation_checks": []
}
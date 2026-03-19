# Task Input — ST-002

## Context

You are working on the NextOne Flutter application.

Read and follow these files before making changes:
- ./ARCHITECTURE.md
- ./ai/agents/AGENTS.md
- ./ai/agents/CODEX.md
- ./ai/runs/refactor-architecture/02-claude-plan.json
- ./ai/runs/refactor-architecture/st-001/04-claude-validation-output.json

This project uses a centralised layered architecture inside `lib/`, guided by Clean Architecture principles.

Current status:
- ST-001 is complete and approved_with_notes
- package consolidation into `lib/` has already happened
- `auto_mappr` and `flutter_hooks` are still present
- this task is only ST-002

---

## Objective

Replace `auto_mappr` and `auto_mappr_annotation` with manual mapping logic.

Manual mapping must use:
- `factory` constructors on DTOs, or
- explicit extension methods

The goal is to remove hidden/generated mapping logic and make transformations explicit and maintainable.

---

## Scope

Work only in the following areas unless a direct call-site update is required:

- `lib/data/mappers/`
- `lib/data/models/`
- any repository/service call sites that currently use auto_mappr-generated mappings
- `pubspec.yaml`

Do NOT modify:
- BLoC logic
- UI/widget structure
- routing
- dependency injection
- Supabase behaviour
- HookWidget usage
- theme/styling

Do NOT perform ST-003, ST-004, ST-005, ST-006, ST-007, or ST-008 work.

---

## Instructions

1. Read all existing `*.auto_mappr.dart` files before deleting anything.
2. Extract the exact field mappings currently implemented.
3. Replace each generated mapper with manual mapping code.

Target mappings include at minimum:
- `ArtistApiResponse` → `ArtistDto`
- `TracksApiResponse` → `TrackDto`
- `UserCredentialsApiResponse` → `UserCredentialsDto`

4. Prefer one of these patterns:

### Pattern A — factory constructor on DTO

```dart
factory ArtistDto.fromApiResponse(ArtistApiResponse r) {
  return ArtistDto(
    id: r.id,
    name: r.name,
  );
}
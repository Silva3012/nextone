# Task Input — ST-003

## Context

You are working on the NextOne Flutter application.

Read and follow these files before making changes:
- ./ARCHITECTURE.md
- ./ai/agents/AGENTS.md
- ./ai/agents/GEMINI.md
- ./ai/runs/refactor-architecture/02-claude-plan.json
- ./ai/runs/refactor-architecture/st-001/04-claude-validation.json
- ./ai/runs/refactor-architecture/st-002/05-claude-validation.json

This project uses a centralised layered architecture inside `lib/`, guided by Clean Architecture principles.

Current status:
- ST-001 is complete and approved_with_notes
- ST-002 is complete and approved_with_notes
- auto_mappr has been removed
- this task is only ST-003

---

## Objective

Replace HookWidget usage with StatefulWidget or StatelessWidget, preserving current behaviour and UI.

The purpose of this step is to:
- remove flutter_hooks usage from targeted files
- move local controller/listener/timer lifecycle into standard Flutter widget lifecycle
- keep BLoC integration unchanged
- keep visual output unchanged

---

## Scope

Work only in the following files unless a direct same-feature helper update is required:

- lib/presentation/login/login_page.dart
- lib/presentation/login/forgot_password_page.dart
- lib/presentation/sign_up/sign_up_page.dart
- lib/presentation/sign_up/profile_setup/profile_setup_page.dart
- lib/presentation/sign_up/role_selection/role_selection_page.dart
- lib/presentation/sign_up/upload_profile_picture/upload_profile_picture.dart
- lib/presentation/loading_splash/loading_splash_page.dart
- lib/presentation/shared/widgets/nextone_text_field.dart

Do NOT modify:
- repository logic
- DTOs/models
- routing definitions
- dependency injection
- app architecture
- theme/styling
- business logic in blocs
- pubspec removal of flutter_hooks yet (that is ST-004)

---

## Widget Classification Rules

Use StatelessWidget when:
- there is no internal mutable state
- there are no internally created TextEditingControllers
- there are no timers/listeners/lifecycle concerns

Use StatefulWidget when:
- a TextEditingController is created internally
- a Timer is created
- local ephemeral UI state exists (e.g. password visibility, selected file, transient error)
- a listener is attached and must be removed in dispose()

Do NOT convert everything blindly to StatefulWidget if StatelessWidget is sufficient.

---

## Required Conversions

### login_page.dart
- Replace HookWidget
- Move email/password TextEditingControllers into State
- Dispose both controllers in dispose()
- Replace local password visibility hook state with bool field + setState()
- Keep AuthBloc usage and event dispatch unchanged

### forgot_password_page.dart
- Replace HookWidget
- Move TextEditingController into State
- Dispose controller in dispose()

### sign_up_page.dart
- Replace HookWidget
- Move all TextEditingControllers into State
- Dispose all controllers in dispose()
- Replace local visibility/error hook state with State fields + setState()

### profile_setup_page.dart
- Replace HookWidget
- Move TextEditingController(s) into State
- Dispose correctly

### role_selection_page.dart
- Replace HookWidget
- If local selection state exists before confirm, use StatefulWidget
- If selection is immediately dispatched and no local state is required, StatelessWidget is acceptable
- Preserve existing behaviour

### upload_profile_picture.dart
- Replace HookWidget
- Move local selected file/error state into State fields
- Preserve image picker behaviour

### loading_splash_page.dart
- Replace HookWidget
- Move Timer setup into initState()
- Cancel Timer in dispose()
- Ensure no setState() happens after dispose()
- Preserve splash/loading behaviour

### nextone_text_field.dart
- Replace HookWidget
- Preserve optional external controller behaviour
- If widget.controller is null, create internal controller and dispose it only if owned internally
- Attach/remove listeners with initState/didUpdateWidget/dispose as appropriate
- Preserve validation/error display behaviour

---

## Constraints

- Do NOT change business logic
- Do NOT redesign UI
- Do NOT move files
- Do NOT remove flutter_hooks from pubspec.yaml yet
- Keep BLoC usage patterns intact
- Preserve null safety
- All internally created TextEditingControllers must be disposed
- All timers/listeners must be cleaned up properly
- Avoid introducing new helper abstractions unless required for clarity

---

## Validation Expectations

After applying changes, the project should be in a state where:
- no targeted file extends HookWidget
- no targeted file imports flutter_hooks
- dart analyze has no errors
- visual and interaction behaviour is preserved

Known unrelated analyzer infos outside ST-003 scope do not need to be fixed unless directly touched.

---

## Output Format

Return STRICT JSON only in this shape:

{
  "step": "ST-003",
  "files_modified": [
    {
      "path": "",
      "purpose": ""
    }
  ],
  "widget_decisions": [
    {
      "path": "",
      "old_type": "",
      "new_type": "",
      "reason": ""
    }
  ],
  "summary": "",
  "notes": [],
  "validation_checks": []
}
# ST-008 Consolidated Checklist

This checklist aggregates all carry-forward notes and architectural deviations from ST-001 → ST-007.

All items must be evaluated and either:
- fixed in code, OR
- explicitly documented as intentional deviations in ARCHITECTURE.md

---

## 1. Architecture Alignment

### 1.1 lib/nextone.dart (ISSUE-001 ST-001)
- Decision required:
  - KEEP as umbrella export (document in ARCHITECTURE.md), OR
  - REMOVE and migrate all imports to direct `package:nextone/...`
- Must be resolved before completion

---

### 1.2 DTO Folder Naming (ISSUE-002 ST-001)
- Rename:
  - `data/models/dto/artist_dto/` → `data/models/dto/artist/`
- Update all imports

---

### 1.3 Repository Structure (ISSUE-003 ST-001)
- Current:
  - nested folders (implementations/artist_repository/artist_repository.dart)
- Target:
  - flat structure (implementations/artist_repository.dart)

- Decision:
  - flatten structure OR
  - update ARCHITECTURE.md to reflect nested structure

---

### 1.4 Service Interface Structure (ISSUE-004 ST-001)
- Flatten:
  - `interfaces/auth/i_auth_service.dart` → `interfaces/i_auth_service.dart`
  - `interfaces/audio/i_audio_service.dart` → `interfaces/i_audio_service.dart`

OR update ARCHITECTURE.md

---

## 2. Mapper Cleanup (ST-002)

### 2.1 Dead Mapper Extensions
- `.toDto()` extension methods are unused

Decision:
- Preferred:
  - delete mapper files + mappers_export.dart
- OR:
  - migrate all usage to `.toDto()`

---

### 2.2 models.dart exporting mappers
- Remove mapper exports from models barrel
- Separate concerns cleanly

---

## 3. UI / Lifecycle Safety (ST-003)

### 3.1 loading_splash_page.dart
- Add mounted check inside delayed navigation

---

### 3.2 profile_setup_page.dart
- Remove listeners before disposing controllers

---

## 4. Dependency / Codegen Alignment (ST-005)

### 4.1 Relative Imports in injection.config.dart
- Change:
  - `preferRelativeImports: true` → `false`
- Regenerate DI

---

### 4.2 Codegen consistency
- Re-run build_runner after any structural changes

---

## 5. Deprecation Fixes

### Replace:
- `.withOpacity(x)` → `.withValues(alpha: x)`

Files:
- mini_player_bar.dart
- auth_error_widget.dart
- nextone_text_field.dart

---

## 6. General Cleanup

- Remove:
  - unused imports
  - dead code
  - stale generated files
- Run:
  - `dart fix --apply`

---

## 7. Final Validation

### Must pass:
- `dart analyze` → 0 issues
- `flutter test` → all tests pass
- `flutter build apk --debug`
- `flutter build ios --no-codesign --debug`

---

## 8. Architecture Doc Sync

- Ensure ARCHITECTURE.md matches:
  - actual folder structure
  - final decisions made above

---

## Definition of Done

ST-008 is complete when:
- no unresolved notes remain
- architecture and codebase are aligned
- project builds, analyzes, and tests cleanly
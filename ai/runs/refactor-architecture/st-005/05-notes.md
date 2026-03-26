# ST-005 Notes

Claude validated ST-005 as approved_with_notes.

## Summary
- `lib/core/injection/injection.config.dart` was regenerated successfully
- `configureDependencies()` remains correctly defined and wired
- no `package:nextone_core` or `package:models` references remain in `lib/`
- ST-005 remained correctly scoped to DI/codegen regeneration

## Carry-forward notes

1. Generated DI file currently uses relative imports
   - Cause: `preferRelativeImports: true` in `lib/core/injection/injection.dart`
   - Action: consider changing to `preferRelativeImports: false` in ST-008 and regenerate code

2. `IAuthService` appears under two generated import prefixes in `injection.config.dart`
   - This is a codegen artefact and not a functional issue
   - No immediate action required

3. Actual repository/service folder structure is more nested than the paths documented in `ARCHITECTURE.md`
   - This originated in ST-001
   - Decide in ST-008 whether to flatten the structure or update `ARCHITECTURE.md`
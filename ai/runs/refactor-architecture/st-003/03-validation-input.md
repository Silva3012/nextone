# Validation Task — ST-003

You are the Validator Agent for this repository.

Follow AGENTS.md and CLAUDE.md strictly.

Validate ST-003 only.

Do not validate later steps.
Do not propose unrelated refactors.
Use ARCHITECTURE.md as the source of truth.

## Task

Validate whether ST-003 has been completed correctly.

ST-003 = Replace HookWidget usage with StatefulWidget or StatelessWidget in the targeted presentation files.

This includes:
- removing HookWidget from the targeted files
- removing flutter_hooks imports from the targeted files
- moving controller/timer/listener lifecycle into standard Flutter widget lifecycle
- preserving UI behaviour and bloc/event flow
- not yet removing flutter_hooks from pubspec.yaml
- not changing business logic, routing, DI, or architecture

## Validation Criteria

Check whether the output aligns with ARCHITECTURE.md and ST-003 intent:

- no targeted file extends HookWidget
- no targeted file imports flutter_hooks
- all internally created TextEditingControllers are disposed
- all timers/listeners are cleaned up correctly
- nextone_text_field preserves optional external-controller behaviour
- loading_splash_page does not risk setState after dispose
- bloc usage remains functionally equivalent
- no obvious UI/behaviour drift was introduced
- no obvious leakage into ST-004 or later steps
- dart analyze has no errors
- any remaining analyzer issues are outside ST-003 scope and documented

## Inputs

Read and use these files:

1. Architecture definition  
   → ./ARCHITECTURE.md

2. Approved refactor plan  
   → ./ai/runs/refactor-architecture/02-claude-plan.json

3. ST-002 validation result  
   → ./ai/runs/refactor-architecture/st-002/05-claude-validation.json

4. ST-003 worker input  
   → ./ai/runs/refactor-architecture/st-003/01-input.md

5. ST-003 worker output  
   → ./ai/runs/refactor-architecture/st-003/02-gemini-output.json

6. Current repository state  
   → Inspect the codebase directly to verify claims where possible

## Output Format

Return STRICT JSON only:

{
  "step": "ST-003",
  "status": "approved|approved_with_notes|rejected",
  "summary": "",
  "issues": [],
  "fix_instructions": [],
  "confidence": "low|medium|high"
}
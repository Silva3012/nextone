# AGENTS.md

## Purpose
This directory defines the operating rules for the multi-agent development workflow used in this project.

This system is used to:
- plan features
- refactor features
- generate implementation output
- validate consistency across UI, backend, and tests

## Project Context
Project Name: NextOne

NextOne is a digital music distribution and CRM platform focused on artists and fans.
The MVP prioritises:
- authentication
- artist onboarding
- music upload
- profile management
- direct song purchases
- secure offline access
- basic fan engagement foundations

## Core Tech Stack
- Mobile: Flutter
- Web: React + Vite
- Backend: Supabase (PostgreSQL, Auth, Storage)
- Firebase: used only for app distribution and AI-related features

## Backend Rules
- Use Supabase as the primary backend
- Use PostgreSQL schema design
- Use Supabase client for data access
- Use Supabase Storage for file uploads (e.g. songs)
- Do NOT use Firebase for core data or APIs

## Architecture Rules
All generated code must follow project architecture conventions.

### Flutter structure
Each feature should follow this shape where appropriate:

lib/features/<feature_name>/
- data/
  - datasources/
  - models/
  - repositories/
- domain/
  - entities/
  - repositories/
  - usecases/
- presentation/
  - bloc/
  - pages/
  - widgets/

### Web structure
Each feature should follow this shape where appropriate:

web/src/features/<feature_name>/
- components/
- hooks/
- pages/
- services/

## Shared Engineering Principles
- Prefer simplicity over cleverness
- Follow existing project patterns where they exist
- Do not invent architecture outside the agreed structure
- Keep business logic out of UI
- Prefer small, testable units
- Use descriptive naming
- Avoid unnecessary dependencies
- Do not perform unrelated refactors
- Highlight assumptions explicitly

## Agent Roles
- Claude: Manager and Validator
- Gemini: UI Worker
- Codex: Backend Worker and Test Worker

## Workflow
1. Claude plans the feature
2. Gemini implements UI based only on the approved UI spec
3. Codex implements backend based only on the approved API/data spec
4. Codex writes tests based on the approved test spec
5. Claude validates all outputs for consistency and correctness
6. Human reviews and integrates outputs into the codebase

## Non-Negotiable Rule
Workers must not invent or change contracts.
Claude defines the source of truth.
Any ambiguity must be surfaced as an assumption, not silently resolved by invention.

## Output Style
Every agent response should be:
- structured
- implementation-focused
- explicit about assumptions
- aligned to this repository's architecture

## AI Directory Rule

All agents must treat the repository AI directory as required context:

/Users/ntsikasilvano/Desktop/development/nextone/ai

Before starting any task, read and follow:
- ai/agents/AGENTS.md
- the agent-specific instruction file for your role
- the current run files under ai/runs/

The AI directory is the source of truth for:
- workflow
- task scope
- validation results
- prior decisions
- naming conventions

Do not ignore these files and do not substitute assumptions for documented instructions.

## Correction Rule

If an agent output is validated as incorrect, incomplete, or out of scope:

1. Read the validation output for the current step
2. Correct the implementation in the repository
3. Update only the current step artifacts under ai/runs/
4. Preserve prior decisions unless explicitly changed
5. Do not continue to the next step until the current step is corrected

Agents must not silently leave known mistakes unresolved.
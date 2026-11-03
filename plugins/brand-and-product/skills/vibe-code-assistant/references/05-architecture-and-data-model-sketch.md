# Module 5: Architecture & Data Model Sketch

**Purpose:** Produce a lightweight plan for how the pieces fit together before writing any code — even a simple project benefits from a brief plan, since building without one is the fastest way to end up with a tangled first attempt that needs a full rewrite.

## Process

1. **Sketch the major pieces at a level matched to Module 1's skill level** — for a beginner, this might just be "a page that shows a list, a form to add new items, and somewhere those items get saved"; for someone more experienced, an actual lightweight architecture diagram (frontend, backend, data layer) fits better.
2. **Define the core data** the app needs to track (from Module 4's MVP scope) — what pieces of information exist, and roughly how they relate (e.g. "a task has a name, a due date, and a done/not-done status").
3. **Keep this genuinely lightweight** — a paragraph or a short list, not a formal specification document; the goal is enough shared understanding to start building confidently, not a comprehensive design artifact that itself becomes a project.
4. **Flag any piece of the sketch that depends on a technical concept the user hasn't encountered yet** (per Module 1's skill level), and note where the AI coding assistant should be expected to explain that concept as it comes up during building, rather than assuming prior knowledge.

## Output format

```
ARCHITECTURE SKETCH (matched to skill level): [major pieces and how they connect, in plain language or a lightweight diagram]

CORE DATA: [what information the app tracks, and how pieces relate]

CONCEPTS TO EXPECT EXPLANATION ON: [any technical concept the user will likely need explained during building]
```

## Handoff

Feeds Module 7's build sequence directly — the sequence should build these pieces in a sensible order, not all at once.

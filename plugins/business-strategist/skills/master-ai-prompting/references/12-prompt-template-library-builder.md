# Module 12: Prompt Template Library Builder

**Purpose:** Build reusable prompt templates for the user's actual recurring tasks — the practical, lasting deliverable of this pipeline, so the user leaves with something they can use again immediately rather than just an improved understanding.

## Process

1. **Build one template per recurring use case identified in Module 2** — each incorporating the relevant techniques from Modules 4-9 (context, format, examples, role if useful, task breakdown if the task is complex).
2. **Write each template with clear fill-in-the-blank placeholders** for the parts that change each time it's used, and fixed language for the parts that stay constant — genuinely reusable, not just one good example dressed up as a "template."
3. **Match each template to its actual tool** (Module 11) — a template for a coding assistant should look different from one for a chat/writing assistant.
4. **Keep each template concrete and tested-feeling** — grounded in the real gap identified in Module 2, not generic prompting advice restated as a fill-in-the-blank form.

## Output format

```
TEMPLATE LIBRARY:

TEMPLATE: [use case name]
Tool: [which AI tool this is built for]
Template text: [with clear [placeholder] markers for what changes each time]
Notes: [any technique reminder specific to using this template well]

(repeat per recurring use case from Module 2)
```

## Handoff

Feeds Module 13's assembly as the pipeline's main lasting deliverable — the user should be able to copy these templates directly into future AI sessions.

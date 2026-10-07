# Module 4: Context & Background-Setting Technique

**Purpose:** Teach how to give an AI tool the right context without overloading it — both too little and too much context produce weak output, and this module teaches the judgment to find the right amount.

## Process

1. **Teach what counts as necessary context**: who the output is for, what's already been tried or ruled out, relevant constraints (length, tone, technical level), and any background fact the AI has no way to know otherwise (a specific company's situation, a specific person's preferences).
2. **Teach the failure mode of too little context** — the AI has to guess, and guesses default to generic; this is the most common cause of bland, one-size-fits-all output.
3. **Teach the failure mode of too much context** — burying the actual task under excessive background makes it harder for the AI to identify what's actually being asked; recommend leading with the task, then providing supporting context, not the reverse.
4. **Apply this directly to Module 2's real use case** — identify what context was missing (or excessive) in the user's actual current prompt.

## Output format

```
NECESSARY CONTEXT CHECKLIST: [audience, prior attempts, constraints, background facts]
TOO-LITTLE-CONTEXT FAILURE MODE: [explanation, tied to generic output]
TOO-MUCH-CONTEXT FAILURE MODE: [explanation, tied to buried task]
APPLIED TO USER'S REAL PROMPT: [what context was missing or excessive, specifically]
```

## Handoff

Feeds Module 14's live rewrite directly — the corrected prompt should demonstrably fix whatever context gap was diagnosed here.

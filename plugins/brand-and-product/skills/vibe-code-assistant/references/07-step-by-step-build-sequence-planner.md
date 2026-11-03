# Module 7: Step-by-Step Build Sequence Planner

**Purpose:** Order the MVP's implementation so the earliest-testable pieces come first — building in the right order means the user sees real progress quickly and catches problems while they're still small and easy to fix.

## Process

1. **Sequence the MVP's pieces** (from Module 4/5) starting with whatever can be built and verified fastest — often the core data/logic piece before the polished interface, or a bare-bones working version of the core feature before any secondary features, so there's something real to test almost immediately.
2. **Break each piece into a single AI-coding-tool request** sized appropriately per Module 6's technique — not so large it's hard to review, not so small it's tedious.
3. **Insert a testing checkpoint after each step** (feeds Module 8 directly) — never let multiple unverified pieces stack up before checking anything works, since that makes it much harder to isolate what broke later.
4. **Flag the riskiest/most uncertain piece early** in the sequence rather than late — if something in the plan is likely to be genuinely hard or uncertain, better to discover that early with time to adjust than after everything else is built around an assumption that turns out to be wrong.

## Output format

```
BUILD SEQUENCE:
Step 1: [piece to build] — AI-tool request scope: [sized per Module 6] — test checkpoint: [what to verify before moving on]
Step 2: [...]
(repeat per step, MVP scope only — Module 4's backlog items come after)

RISKIEST PIECE FLAGGED: [which step is most uncertain, and why it's sequenced where it is]
```

## Handoff

Feeds Module 8 (each step's checkpoint becomes a real verification task) and Module 9 (if a step fails, this sequence tells you exactly what changed since the last known-good state).

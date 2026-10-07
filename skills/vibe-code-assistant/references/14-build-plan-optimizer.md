# Module 14: Build Plan Optimizer

**Purpose:** Score the finished build plan on scope realism and technical fit, and identify exactly what to tackle first — the final quality gate before the user starts actually building.

## Process

1. **Score the assembled plan** on a simple rubric, 1-5 each:
   - **Scope realism** — is the MVP genuinely minimal and achievable, or still too ambitious relative to Module 1's timeline/skill level?
   - **Technical fit** — does Module 3's stack genuinely match the user's skill level, or does it assume more background than they have?
   - **Sequence soundness** — does Module 7's build order actually let problems surface early and small, or does it front-load risk?
   - **Testability** — are Module 8's checkpoints concrete enough to actually run, or vague?
   - **Debugging readiness** — is Module 9's guide specific enough to actually help when something breaks, given Module 1's skill level?
   - **Sustainability** — do Module 11 and 12 make it realistic that this project gets documented and iterated on, rather than abandoned once the initial build is "done"?
2. **Flag the lowest-scoring 1-2 dimensions** and revisit those specific modules — a low scope-realism score in particular is worth fixing before building starts, since it's the single most common reason these projects stall.
3. **Identify exactly what to tackle first** — the very first concrete action the user should take right now, not just a restated summary of the whole plan.

## Output format

```
SCORES (1-5): Scope Realism:_ Technical Fit:_ Sequence Soundness:_ Testability:_ Debugging Readiness:_ Sustainability:_

TOP FIXES MADE: [list, tied to lowest scores]

WHAT TO DO FIRST: [the single concrete next action]
```

## Handoff

This is the last stage — present the final scored build plan to the user as the finished deliverable, ready to start building against. Flag any score of 3 or below plainly rather than presenting the plan as "done."

<!-- surge:brain-handback:begin -->
## Hand back to the Business Brain

This skill establishes no standing fact about the business, so there is nothing it must write to `BUSINESS-BRAIN.md`. If the founder said something new along the way — a price, a goal, a boundary, a phrase they actually use — hand it back anyway as a block in the file's own shape (a `###` heading per field carrying its key), and tell them which key it belongs under.
<!-- surge:brain-handback:end -->

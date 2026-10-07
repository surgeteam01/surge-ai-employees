# Module 9: Chain-of-Thought & Complex Task Breakdown

**Purpose:** Teach breaking a genuinely complex task into steps the AI can execute in sequence — a technique that matters specifically when a single-shot prompt reliably underperforms on multi-part or reasoning-heavy tasks.

## Process

1. **Teach recognizing when a task is too complex for a single prompt** — multiple distinct sub-tasks, a task requiring information gathered in one step to inform a later step, or a task where the AI's first-pass attempts tend to skip or shortcut a necessary step.
2. **Teach breaking the task into an explicit sequence** — asking the AI to complete and show its work for step 1 before moving to step 2, rather than asking for the entire complex output in one shot and hoping every step gets handled well.
3. **Teach asking the AI to reason through a problem explicitly before answering**, when the task benefits from it (a decision with trade-offs, a debugging problem, a plan with dependencies) — asking "think through the trade-offs first, then give your recommendation" often produces a more considered answer than asking for the recommendation directly.
4. **Apply to Module 2's real use case** — is this actually a complex, multi-step task that would benefit from breakdown, or a simple task that doesn't need this treatment (over-engineering a simple prompt with unnecessary steps is its own mistake).

## Output format

```
WHEN TO BREAK A TASK DOWN: [signals — multiple sub-tasks, sequential dependency, skipped steps in single-shot attempts]
SEQUENCING TECHNIQUE: [step-by-step example]
EXPLICIT REASONING TECHNIQUE: [example, "think through X before Y"]
APPLIED TO USER'S REAL USE CASE: [does this task need breakdown, or is it simple enough not to]
```

## Handoff

Feeds Module 14 if the user's real use case is complex enough to warrant this technique.

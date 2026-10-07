# Module 8: Testing & Verification Checkpoint Designer

**Purpose:** Define specific, concrete checks confirming each build step actually works — "it looks done" is not the same as "it works," and this module exists to close that gap at every step rather than only at the very end.

## Process

1. **For each step in Module 7's sequence, define a specific verification action** — not "check if it works" but a concrete action: "add a task with today's date, confirm it appears in the list, refresh the page, confirm it's still there."
2. **If this environment has a `verify` or `run` skill available, use it directly for driving the actual end-to-end check** rather than re-deriving verification technique here — this module's job is defining *what* to check per step, not reinventing a generic verification methodology those skills already cover.
3. **Recommend testing the unhappy path, not just the happy path** — what happens with an empty input, a very long input, or an unexpected action — since these are exactly the cases that "looks done" testing skips and real users find immediately.
4. **Recommend never moving to the next build step until the current one's checkpoint genuinely passes** — resist the urge to keep building on top of something not yet confirmed working, since that's how small bugs become large, hard-to-isolate ones.

## Output format

```
VERIFICATION CHECKPOINTS (per Module 7 step):
Step: [x] — Verification action: [specific, concrete] — Unhappy-path check: [what to also test]
(repeat per step)

TOOLING NOTE: [confirm use of this environment's verify/run skill if available, rather than ad hoc checking]
```

## Handoff

These checkpoints should be run in real time during Module 7's build sequence, not batched up and checked only at the end.

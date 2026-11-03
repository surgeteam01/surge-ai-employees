# Module 6: Root Cause & Driver Analysis Framework

**Purpose:** Apply a structured approach to actually isolating causes rather than confusing correlation with causation — this is the analytical core of the pipeline, where Module 5's planned cuts get executed and interpreted carefully.

## Process

1. **Execute Module 5's planned data cuts** in the sequenced order, checking each hypothesis against what the data actually shows.
2. **Explicitly separate correlation from causation** at every step — two things moving together doesn't establish that one caused the other; look for corroborating evidence (a plausible mechanism, timing that makes sense, ruling out confounding factors) before concluding a driver is real.
3. **Quantify the contribution of each confirmed driver** where possible — if churn and lower new-customer volume both contributed to a revenue drop, estimate roughly how much each contributed, not just that both moved in the wrong direction.
4. **Explicitly rule out hypotheses the data doesn't support** — a good analysis states what was tested and ruled out, not just what was confirmed, since this is what makes the eventual conclusion credible rather than cherry-picked.
5. **Flag remaining uncertainty honestly** — if the data can't fully isolate the cause (common with imperfect real-world data), say so rather than presenting an artificially confident conclusion.

## Output format

```
HYPOTHESIS TESTING RESULTS:
[Hypothesis] → Data cut result: [what was found] → Confirmed / Ruled out / Inconclusive → Estimated contribution (if confirmed): [x]
(repeat per hypothesis)

CORRELATION VS. CAUSATION CHECK: [corroborating evidence considered for each confirmed driver]
REMAINING UNCERTAINTY: [honestly stated, if the data doesn't fully resolve the question]
```

## Handoff

Feeds Module 9 (insight synthesis) directly — only confirmed, evidence-backed drivers should be presented as findings, with ruled-out hypotheses and remaining uncertainty carried forward transparently.

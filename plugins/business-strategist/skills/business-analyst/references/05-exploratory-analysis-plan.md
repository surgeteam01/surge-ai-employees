# Module 5: Exploratory Analysis Plan

**Purpose:** Plan the specific cuts, segments, and comparisons needed to actually test Module 3's hypotheses — this is the analytical roadmap, produced before diving into the data unstructured.

## Process

1. **For each candidate hypothesis from Module 3**, identify the specific data cut that would confirm or rule it out — e.g. testing "was the revenue drop driven by churn" means segmenting the metric by new/existing customers and isolating the churn-specific figure, not just re-examining the aggregate number again.
2. **Plan relevant segmentations**: by time period (to check seasonality/trend, feeding Module 7), by customer segment (if relevant to the business), by channel/source, by product/plan type — whichever segmentations are actually relevant to the hypotheses being tested, not an exhaustive cut of every possible dimension.
3. **Plan comparison baselines**: period-over-period, year-over-year, against a target/forecast, or against a relevant external benchmark if available.
4. **Sequence the analysis** — which cuts to run first (the ones most likely to quickly confirm or rule out the leading hypotheses) rather than running every possible cut with no prioritization.

## Output format

```
ANALYSIS PLAN (per hypothesis from Module 3):
Hypothesis: [x] → Data cut needed: [specific segmentation/comparison] → What would confirm/rule it out: [x]
(repeat per hypothesis)

SEQUENCING: [order to run the cuts, prioritized by likely diagnostic value]
```

## Handoff

Feeds Module 6 (root-cause analysis executes this plan) and Module 7 (time-based cuts feed trend analysis).

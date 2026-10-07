# Module 12: Conversion Testing Designer

**Purpose:** Design a plan for testing which images actually convert once live — since even a well-executed photo plan is still a hypothesis about what will make a shopper buy, adapted from the A/B-testing pattern used throughout this repo's optimizer stages.

## Process

1. **Identify the highest-leverage image to test** — usually the primary/hero shot, since it's seen by the most potential buyers before any other image or copy.
2. **Design a genuine A/B test** — two meaningfully different hero image approaches (e.g. clean product-only vs. lifestyle-context, or two different angles/compositions), not two nearly-identical variants that wouldn't produce a meaningfully different result either way.
3. **Recommend a realistic test method** given the platform (Module 1) — some marketplaces support native A/B testing tools for listing images; for others, recommend a sequential test (run one version for a set period, measure, then switch) since true simultaneous split-testing isn't always available.
4. **Define the success metric** — click-through rate, conversion rate, or both, and a realistic sample size/timeframe before drawing a conclusion.

## Output format

```
TEST IMAGE: [hero shot, or other highest-leverage image]
VARIANT A: [approach] vs. VARIANT B: [meaningfully different approach]
TEST METHOD: [native A/B tool / sequential test] — reason: [platform capability]
SUCCESS METRIC: [CTR / conversion rate] — SAMPLE SIZE/TIMEFRAME: [realistic threshold before concluding]
```

## Handoff

Feeds Module 13's assembly as a recommended next step after initial publishing, and Module 14 should confirm this test plan exists rather than treating the first generated set as permanently final.

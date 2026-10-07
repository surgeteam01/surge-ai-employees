# Module 4: Metric & KPI Definition

**Purpose:** Define exactly how every metric used in this analysis is calculated — ambiguous metric definitions are one of the most common ways an analysis looks rigorous while silently answering a different question than intended, or being inconsistent with how the same metric is defined elsewhere in the business.

## Process

1. **List every metric the sharpened question (Module 3) requires.**
2. **Write a precise, unambiguous definition for each** — the exact calculation, the exact time window, and what is and isn't included (e.g. "monthly recurring revenue" — does it include one-time fees? Annual plans counted as 1/12th? Trial accounts excluded?).
3. **Check for consistency with how the business already defines these metrics elsewhere** (an existing dashboard, a finance team's definition) — if this analysis's definition differs, flag it explicitly rather than silently introducing a second, conflicting definition of the same-named metric.
4. **Note any metric that's a reasonable proxy rather than a direct measure** of what the question actually cares about (e.g. using "email open rate" as a proxy for "engagement" when a more direct measure isn't available) — label proxies as such.

## Output format

```
METRIC DEFINITIONS:
[Metric name] — Definition: [exact calculation] — Time window: [x] — Included/excluded: [specifics]
(repeat per metric)

CONSISTENCY CHECK: [confirmed consistent with existing definitions, or flagged discrepancy]
PROXY METRICS FLAGGED: [any metric used as a stand-in for what's really being measured]
```

## Handoff

These definitions must be used consistently by every subsequent module — Module 5's analysis and Module 8's visualizations should never silently redefine a metric already defined here.

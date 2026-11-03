# Module 7: Trend & Forecast Analyzer

**Purpose:** Identify genuine trends and seasonality in the data, and produce a simple, appropriately-caveated forecast if relevant to the question — distinct from Module 6's cause-analysis, this module looks at the metric's trajectory over time on its own terms.

## Process

1. **Identify the underlying trend** (using Module 5's time-based cuts) separate from noise — a single month's move can be noise; confirm whether a pattern holds across multiple periods before calling it a trend.
2. **Check for seasonality** — recurring patterns tied to time of year, day of week, or business cycle (e.g. a retail business's Q4 spike) that should be accounted for before interpreting a period-over-period change as meaningful.
3. **Produce a simple forecast if the question calls for one** — a straightforward extrapolation of the identified trend/seasonality, clearly labeled as a simple projection, not a sophisticated statistical model, unless the user has specifically requested and can support more rigorous forecasting methods.
4. **State forecast confidence and assumptions explicitly** — what would break this forecast (a known upcoming change, an assumption that historical patterns continue) rather than presenting a single number as certain.

## Output format

```
TREND IDENTIFIED: [direction, and confirmation it holds across multiple periods, not just one]
SEASONALITY: [recurring pattern identified, or "none apparent"]

FORECAST (if relevant to the question): [projection] — method: [simple extrapolation, clearly labeled]
ASSUMPTIONS/CONFIDENCE: [what would break this forecast, stated explicitly]
```

## Handoff

Feeds Module 8 (trend charts) and Module 9 (trend context informs how the current finding should be interpreted — is this part of a longer pattern, or a genuine break from it?).

# Module 2: Data Inventory & Quality Assessment

**Purpose:** Establish exactly what data exists and its real limitations before any analysis begins — an analysis built on unexamined data quality issues can look rigorous while quietly being wrong.

## Process

1. **Inventory what data is actually available** — fields/columns present, time range covered, granularity (daily, per-transaction, aggregated monthly), and how it was collected/exported.
2. **Assess data quality**: missing values and their pattern (random vs. systematic — e.g. missing only for a specific time period or segment, which itself might be meaningful), inconsistent definitions across sources (two systems both reporting "revenue" but calculated differently), duplicate records, and any known collection changes that could create artificial trend breaks (a tracking change, a new tool adopted mid-period).
3. **Flag gaps relative to what the eventual question likely needs** — if the available data can't actually answer the stated goal, say so now rather than producing an analysis that quietly works around a real gap.
4. **Recommend a data quality remediation step** if needed (a specific query to run, a specific field to double-check with whoever owns the source system) before proceeding, if the gap is severe enough to threaten the analysis's validity.

## Output format

```
DATA INVENTORY: [fields/columns, time range, granularity, collection method]

QUALITY ISSUES:
- [Issue] — pattern: [random/systematic] — severity: [minor/moderate/severe]
(repeat per issue found)

GAPS RELATIVE TO THE LIKELY QUESTION: [what's missing that the analysis will need]
REMEDIATION RECOMMENDED (if severe): [specific step before proceeding]
```

## Handoff

Feeds every subsequent module — Module 4's metric definitions and Module 5's analysis plan must work within these real data constraints, not an idealized version of the data.

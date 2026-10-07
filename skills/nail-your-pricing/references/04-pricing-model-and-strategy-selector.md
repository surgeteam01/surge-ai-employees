# Module 4: Pricing Model & Strategy Selector

**Purpose:** Choose the pricing model (how the price is structured) and the market positioning strategy (where it sits relative to alternatives) before touching an actual number — this decides the shape everything downstream gets poured into.

## Process

1. **Choose a pricing model** based on the offer's delivery pattern and value realization (from Module 2):
   - **One-time/flat fee** — best for a discrete deliverable with a clear endpoint (a website build, a single course).
   - **Subscription/retainer** — best when value is delivered continuously or the relationship is ongoing (coaching, managed services, SaaS).
   - **Usage-based** — best when value scales directly with volume/usage and the buyer wants cost tied to consumption (per-seat, per-transaction).
   - **Tiered** — best when different buyer segments get genuinely different value from different feature/access levels, not just an arbitrary split.
   - **Value-based (percentage of outcome, or a custom quote per client)** — best when the outcome is large, variable, and directly measurable (e.g. a percentage of revenue generated or cost saved), and only when that outcome is genuinely attributable to the offer.
   Flag if the current or requested model doesn't fit the delivery pattern (e.g. a one-time high-touch service being sold as a cheap subscription when it doesn't reduce marginal cost per customer).
2. **Choose a positioning strategy** based on Module 3's willingness-to-pay signals, Module 1's desired positioning, and the offer's differentiation:
   - **Premium** — priced above the market to signal quality/exclusivity; requires strong proof and differentiation to be defensible (a premium price with weak proof invites skepticism, not respect).
   - **Mid-market/competitive** — priced near comparable alternatives, differentiated on specifics rather than price itself.
   - **Value/penetration** — priced below comparable alternatives to win market share or reduce a real adoption barrier; only recommend this if margin (from Module 1) actually supports it long-term, since a penetration price adopted out of fear rather than strategy is hard to raise later.
3. **Flag the risk of picking positioning out of fear** — pricing low because of self-doubt rather than genuine strategy is one of the most common and costly mistakes in this whole process; if the user's stated reason for wanting a low price is uncertainty rather than a deliberate market strategy, say so directly.

## Output format

```
PRICING MODEL: [chosen model] — reason: [delivery pattern + value realization]
POSITIONING STRATEGY: [premium / mid-market / value] — reason: [willingness-to-pay signals + differentiation + margin reality]
FEAR-PRICING FLAG: [if applicable — note if the stated reason for a low price is confidence-based rather than strategic, and what would need to be true to justify a higher position]
```

## Handoff

The model and positioning chosen here shape Module 7 (value metric and tier design must fit the model), Module 8 (the price point calculation happens within this strategy, not independently of it), and Module 11 (payment structure follows naturally from the model — e.g. a subscription model implies billing cadence decisions a one-time fee doesn't).

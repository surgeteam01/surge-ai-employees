# Module 8: Financial Health Snapshot

**Purpose:** A lightweight, directional check on financial health — not a full accounting audit — enough to flag real risk that everything else in this audit depends on, while being explicit about this module's limits.

## Process

1. **Capture revenue trend direction** — growing, flat, declining — from Module 1's context or the user's direct input.
2. **Capture cash runway/buffer**, if known.
3. **Capture revenue concentration** — what percentage of total revenue comes from the top client or product, tying back to Module 2's concentration-risk flag.
4. **Note any known red flags** — chronic late payment, persistently thin margins, or reliance on one large seasonal spike.
5. **State this module's scope explicitly** — this is a directional gut-check, not a substitute for an accountant or a real financial audit, and should never be presented with false precision.

## Output format

```
REVENUE TREND: [growing / flat / declining]
CASH BUFFER: [detail, or "unknown"]
REVENUE CONCENTRATION: [top client/product as % of total, or "unknown"]
RED FLAGS: [list, or "none stated"]
SCOPE DISCLAIMER: This is a directional snapshot based on available information, not a financial audit — verify with an accountant before acting on any finding here.
```

## Handoff

Feeds Module 11 (risk) and Module 12. For any finding that needs real data-driven financial analysis, hand off to `business-analyst` rather than attempting a deeper analysis here.

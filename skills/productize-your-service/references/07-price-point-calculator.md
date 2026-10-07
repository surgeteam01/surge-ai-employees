# Module 7: Price Point Calculator

**Purpose:** Set the actual price per tier — reused directly from `nail-your-pricing`'s Price Point Calculator, since the underlying math (a hard margin floor, a market-informed ceiling, triangulated to a defensible number) is identical whether the offer is a digital product or a service package.

## Process

1. **Establish the hard floor per tier** from real delivery costs — critically, this must include the business owner's or team's time at a realistic rate, not just hard costs, since service delivery time is the dominant cost in almost every productized service. Confirm the minimum acceptable margin from Module 1.
2. **Establish the ceiling** from comparable service providers' pricing (ask the user for known comparables, or flag as needing research) and the audience's willingness to pay from Module 3's decision-criteria research.
3. **Triangulate within the floor-to-ceiling range**: cost-plus (floor + target margin, accounting for realistic delivery time per client at the stated capacity from Module 1), competitive anchor (consistent with Module 5's positioning), and value-based (a fraction of the transformation's real-world worth to the client).
4. **Apply pricing psychology**: charm pricing for value/mid-market positioning, round numbers for premium positioning, and price-anchoring across the tier structure (Module 6) so the middle tier reads as the obvious best value.
5. **Sanity-check against delivery capacity** (from Module 1) specifically — unlike many digital products, a service package's "cost" scales directly with client volume; confirm the price supports sustainable delivery at the realistic concurrent-client number, not just a healthy per-unit margin that breaks down under real workload.

## Output format

```
HARD FLOOR (per tier): $[x] — basis: [delivery time cost + minimum margin]
CEILING (per tier): $[x] — basis: [competitive/willingness-to-pay limit]

FINAL PRICE(S) (per tier): [$x each]
PAYMENT CADENCE: [one-time / monthly retainer — tied to Module 5's model]
PSYCHOLOGY APPLIED: [charm pricing / round-number premium / tier anchoring]
CAPACITY SANITY CHECK: [does this price support sustainable delivery at realistic concurrent-client volume from Module 1?]
```

## Handoff

This is the number every later module builds around. Module 8's delivery SOP must be economically viable at this exact price and the realistic capacity checked here — if the SOP later reveals delivery takes meaningfully longer than assumed, return to this module rather than letting margin quietly erode.

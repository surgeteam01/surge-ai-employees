# Module 6: Sales Page Handoff

**Purpose:** Produce the actual sales page for the launch — not by re-deriving sales page construction here, but by explicitly handing off to the `sales-page-that-converts` skill's own pipeline, which already does this well. This module exists to make that handoff deliberate and complete, not to duplicate 8+ modules' worth of work.

## Process

1. **Do not re-run `sales-page-that-converts`'s Stage 1 (Onboarding), Stage 2 (Offer Clarifier), or Stage 3 (Customer Research) from scratch.** Pass forward this skill's own Launch Brief (Module 1), sharpened offer (Module 2), and VoC profile (Module 3) directly as their equivalents — the facts are already gathered, don't re-ask the user the same questions in a different skill's voice.
2. **Invoke `sales-page-that-converts`'s Stage 4 through Stage 14** (Sales Page Architect, Headline Lab, Lead Writer, Offer Stack Builder, Proof & Testimonial Engine, Objection Handler, Guarantee Writer, Pricing Section Designer, CTA & Close Writer, Full Page Assembler, Page Optimizer) using the carried-forward brief, offer, and VoC profile as their inputs.
3. **Note any launch-specific framing the sales page needs** that a standalone sales page wouldn't: a visible cart-close date/countdown if this is a live launch (tie this to the real date from Module 4, never a fabricated one), and language acknowledging this is a limited-time launch window rather than an always-available page, if applicable.
4. **Carry the resulting sales page forward as a finished asset** — this module's job is complete once that other pipeline has produced a scored, finished page; don't re-edit its output independently here.

## Output format

```
SALES PAGE HANDOFF

Inputs passed to sales-page-that-converts:
- Launch Brief → Offer Brief equivalent: [confirmed passed]
- Sharpened Offer (Module 2) → Offer Clarifier output: [confirmed passed]
- VoC Profile (Module 3) → Customer Research output: [confirmed passed]

LAUNCH-SPECIFIC FRAMING NOTES: [visible cart-close date if live / evergreen framing if not]

RESULTING SALES PAGE: [the finished, scored page produced by sales-page-that-converts's Stage 4-14]
```

## Handoff

The finished sales page feeds Module 7 (the cart-open sequence drives traffic to this exact page) and Module 13 (assembled as part of the full launch package). If the sales page's own Page Optimizer stage flagged any score of 3 or below, carry that flag forward into Module 14 rather than letting it get lost between skills.

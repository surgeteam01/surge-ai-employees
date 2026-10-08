# Module 14: Pricing Optimizer

**Purpose:** Score the finished pricing package on margin health, conversion likelihood, and fairness perception, and produce a testable variant — the final quality gate before the price goes live in front of real buyers.

## Process

1. **Score the pricing package** on a simple rubric, 1-5 each:
   - **Margin health** — is the final price comfortably above the hard floor from Module 8, or uncomfortably close to it?
   - **Value justification** — is the price clearly tied to the transformation and value stack, or does it read as an arbitrary number?
   - **Competitive coherence** — does the price make sense given Module 5's landscape and the chosen positioning, or does it contradict its own strategy (e.g. claiming premium positioning at a discount-tier price)?
   - **Objection coverage** — are the top 1-2 real price objections actually pre-empted, not just implied?
   - **Fairness perception** — would a buyer, on reflection, feel the price was fair given what they received, or does anything in the structure (e.g. installment premium, tier gating) risk feeling like a trick?
   - **Clarity** — can a buyer understand exactly what they'd pay and what they'd get within a few seconds of looking at the presentation?
2. **Flag the lowest-scoring 1-2 dimensions** and revisit those specific modules (e.g. a low margin-health score means going back to Module 8, not just rewording Module 12's copy) rather than doing a cosmetic pass over the presentation.
3. **Run a self-doubt check**: if the price still feels too low relative to Module 6's value stack and Module 5's market ceiling, or if the positioning strategy from Module 4 was chosen out of fear rather than data, flag it explicitly — this is the single most common failure mode this whole skill exists to catch.
4. **Produce at least one A/B variant** — typically an alternate price point (testing a meaningfully different number, not a token few dollars) or an alternate framing of the value stack/anchor, since the psychological presentation of a price often moves conversion as much as the number itself. Note the hypothesis each variant tests.

## Output format

```
SCORES (1-5): Margin Health:_ Value Justification:_ Competitive Coherence:_ Objection Coverage:_ Fairness Perception:_ Clarity:_

TOP FIXES MADE: [list, tied to lowest scores]

SELF-DOUBT CHECK: [any sign the price was set from fear rather than strategy — and what evidence would justify a higher number]

A/B VARIANT:
- Alternate price/framing: [detail]
- Hypothesis being tested: [one line]
```

## Handoff

This is the last stage — present the final scored pricing package, the sales-conversation companion, and the A/B variant to the user as the finished deliverable. If any score is 3 or below, say so plainly rather than presenting the pricing as "done" — flag it as a known weak point and what it would take to fix (e.g. "Margin health scored low because the price sits only 8% above the cost floor — recommend revisiting Module 8 before launch").

<!-- surge:brain-handback:begin -->
## Hand back to the Business Brain

This skill establishes facts the founder's Business Brain should keep:

- Core offers `core_offers`

Before finishing, write those as a block in the file's own shape — a `###` heading per field carrying its key, then the answer (bullets for a list, a sentence or two for text) — and show it to the founder.

Where the block goes depends on where the brain is:

- **A Business Brain import tool is available** — `business_brain.import_portable`, or one whose name ends in `business_brain_import_portable` (the founder's Surge server, in Claude Code or Codex). Offer to send the block to it exactly as shown. It lands a draft, merged over what is already answered, so say 'draft', never 'updated'. The founder publishes it on the Business Brain page. If the tool refuses (a read-only connection, no business workspace), hand the block over for the founder to import on that page.
- **You read a hosted brain but have no import tool:** hand the block over for the founder to import on the Business Brain page. Never start a `BUSINESS-BRAIN.md` beside a hosted brain.
- **Otherwise, the brain is the file:** tell the founder to fold the block into `BUSINESS-BRAIN.md` under the matching keys, replacing the old answer rather than adding a second. In Claude Code, offer to update the file in place. On the Claude website or ChatGPT, remind them to replace the Project file.
<!-- surge:brain-handback:end -->

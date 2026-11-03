# Module 14: Package Optimizer

**Purpose:** Score the finished package on margin health, conversion likelihood, and — uniquely for this skill — scope-creep risk, since a productized service's biggest failure mode isn't a weak sales page, it's a package that quietly reverts to bespoke work after a few clients.

## Process

1. **Score the package** on a simple rubric, 1-5 each:
   - **Margin health** — is the price comfortably above the real delivery-cost floor from Module 7, accounting for actual time cost?
   - **Scope clarity** — could a new team member read the scope boundary (Module 4) and immediately know whether a new request is in or out?
   - **Scope-creep risk** — does the delivery SOP (Module 8) have a real, specific checkpoint that catches out-of-scope requests, or is it left to individual judgment in the moment?
   - **Delivery feasibility** — does the SOP's timeline realistically fit within the promised turnaround at the stated delivery capacity (Module 1), or is it optimistic?
   - **Tier differentiation** — does each tier up genuinely add more value, or does the top tier just feel like "the same thing, faster"?
   - **Objection coverage** — is the fit/flexibility objection specifically answered clearly, not just generic price objections?
2. **Flag the lowest-scoring 1-2 dimensions** and revisit those specific modules rather than a cosmetic copy pass — a low scope-creep-risk score in particular should be treated as a priority fix, since it's the failure mode most likely to quietly erode margin over the following months rather than showing up immediately.
3. **Run a single-person-dependency check**: if Module 8 flagged any step that only works because of one person's tacit expertise, note explicitly what it would take to close that gap (documentation, training, a decision checklist) before this is truly a repeatable, sellable package rather than one person's disguised custom work.
4. **Produce at least one A/B variant** — typically an alternate tier structure (e.g. 2 tiers vs. 3) or an alternate price point for the recommended tier, since the middle tier's framing has outsized influence on which tier most clients choose.

## Output format

```
SCORES (1-5): Margin Health:_ Scope Clarity:_ Scope-Creep Risk:_ Delivery Feasibility:_ Tier Differentiation:_ Objection Coverage:_

TOP FIXES MADE: [list, tied to lowest scores]

SINGLE-PERSON-DEPENDENCY CHECK: [any step still reliant on tacit expertise, and what closing that gap would require]

A/B VARIANT:
- Alternate tier structure or price point: [detail]
- Hypothesis being tested: [one line]
```

## Handoff

This is the last stage — present the final scored package, the internal delivery document, and the A/B variant to the user as the finished deliverable. If any score is 3 or below, say so plainly rather than presenting the package as "done" — flag it as a known weak point (e.g. "Scope-creep risk scored low because the intake checkpoint doesn't specify who has authority to say no to an out-of-scope request — recommend fixing this before selling the first package").

<!-- surge:brain-handback:begin -->
## Hand back to the Business Brain

This skill establishes facts the founder's Business Brain should keep:

- Core offers `core_offers`
- Topics you do not cover `topics_not_covered`

Before finishing, write those as a block in the file's own shape — a `###` heading per field carrying its key, then the answer (bullets for a list, a sentence or two for text) — and show it to the founder.

Where the block goes depends on where the brain is:

- **A Business Brain import tool is available** — `business_brain.import_portable`, or one whose name ends in `business_brain_import_portable` (the founder's Surge server, in Claude Code or Codex). Offer to send the block to it exactly as shown. It lands a draft, merged over what is already answered, so say 'draft', never 'updated'. The founder publishes it on the Business Brain page. If the tool refuses (a read-only connection, no business workspace), hand the block over for the founder to import on that page.
- **You read a hosted brain but have no import tool:** hand the block over for the founder to import on the Business Brain page. Never start a `BUSINESS-BRAIN.md` beside a hosted brain.
- **Otherwise, the brain is the file:** tell the founder to fold the block into `BUSINESS-BRAIN.md` under the matching keys, replacing the old answer rather than adding a second. In Claude Code, offer to update the file in place. On the Claude website or ChatGPT, remind them to replace the Project file.
<!-- surge:brain-handback:end -->

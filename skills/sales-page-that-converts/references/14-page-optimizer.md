# Module 14: Page Optimizer

**Purpose:** Score the finished page, improve readability and conversion potential, and produce A/B variants — the final quality gate before the page is considered done.

## Process

1. **Score the assembled page** on a simple rubric, 1-5 each:
   - **Clarity** — is the offer and transformation unmistakable within the first screen?
   - **Awareness match** — does the opening match where the audience actually starts (per Module 3), or does it over/under-explain?
   - **Hook strength** — does the lead earn continued reading?
   - **Proof density** — is proof placed near every major claim, or are claims left unsupported?
   - **Objection coverage** — are the top 2-3 real objections actually answered, not just implied?
   - **CTA strength** — is it clear, low-friction, and specific?
   - **Blueprint compliance** — does the page match the block order in `00-page-blueprint.md` (or Module 4's recorded deviation), with the CTA block at every planned placement, the six-slot FAQ order, and the value stack adjacent to the price? Score this honestly: a page missing three CTA placements is not a 4 because the copy is good.
   On a page brought in from outside this pipeline, blueprint compliance is a **diagnosis, not a verdict** — score it, then name the two or three highest-leverage blocks the page is missing (usually the repeated CTA placements, the five-outcome end state, and the ordered FAQ) rather than recommending a rebuild.
2. **Flag the lowest-scoring 1-2 dimensions** and rewrite those sections rather than doing a generic full-page polish — targeted fixes beat diffuse ones.
3. **Check readability**: sentence length variation, paragraph length (long-form pages should rarely run more than 3-4 lines per paragraph), and whether subheads alone tell a coherent story if someone only skims those.
4. **Produce at least one full A/B variant** — typically a different headline + different CTA framing, since those two elements have the highest leverage-per-word-changed. Note what hypothesis each variant tests (e.g. "Variant B tests curiosity-driven headline vs. Variant A's direct-promise headline").

## Output format

```
SCORES (1-5): Clarity:_ Awareness Match:_ Hook:_ Proof Density:_ Objection Coverage:_ CTA Strength:_ Blueprint Compliance:_

TOP FIXES MADE: [list, tied to lowest scores]

A/B VARIANT:
- Headline: [alternate]
- CTA: [alternate]
- Hypothesis being tested: [one line]
```

## Handoff

This is the last stage — present the final scored page plus the A/B variant to the user as the finished deliverable. If any score is 3 or below, say so plainly rather than presenting the page as "done" — flag it as a known weak point and what it would take to fix (e.g. "Proof density scored low because there are no testimonials yet — recommend collecting 3-5 before launch").

<!-- surge:brain-handback:begin -->
## Hand back to the Business Brain

This skill establishes no standing fact about the business, so there is nothing it must write to the brain. If the founder said something new along the way — a price, a goal, a boundary, a phrase they actually use — hand it back anyway as a block in the file's own shape (a `###` heading per field carrying its key), and tell them which key it belongs under.

Where the block goes depends on where the brain is:

- **A Business Brain import tool is available** — `business_brain.import_portable`, or one whose name ends in `business_brain_import_portable` (the founder's Surge server, in Claude Code or Codex). Offer to send the block to it exactly as shown. It lands a draft, merged over what is already answered, so say 'draft', never 'updated'. The founder publishes it on the Business Brain page. If the tool refuses (a read-only connection, no business workspace), hand the block over for the founder to import on that page.
- **You read a hosted brain but have no import tool:** hand the block over for the founder to import on the Business Brain page. Never start a `BUSINESS-BRAIN.md` beside a hosted brain.
- **Otherwise, the brain is the file:** tell the founder to fold the block into `BUSINESS-BRAIN.md` under the matching keys, replacing the old answer rather than adding a second. In Claude Code, offer to update the file in place. On the Claude website or ChatGPT, remind them to replace the Project file.
<!-- surge:brain-handback:end -->

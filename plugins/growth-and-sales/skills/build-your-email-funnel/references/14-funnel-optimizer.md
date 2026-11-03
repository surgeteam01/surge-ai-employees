# Module 14: Funnel Optimizer

**Purpose:** Score the finished funnel, improve conversion potential and deliverability, and produce A/B variants — the final quality gate before the funnel is considered done.

## Process

1. **Score the assembled funnel** on a simple rubric, 1-5 each:
   - **Clarity** — is the offer and transformation unmistakable by the end of the Sales sequence?
   - **Awareness match** — does the Welcome/Nurture runway match where the audience actually starts (per Module 3), or does it over/under-explain before pitching?
   - **Subject line strength** — as a proxy for open rates, are the subject lines across the funnel varied, specific, and non-repetitive?
   - **Proof density** — is proof placed near every major claim across the Sales sequence, or are claims left unsupported?
   - **Objection coverage** — are the top 1-2 real objections actually given a dedicated email, not just implied?
   - **CTA strength and progression** — is each CTA clear, low-friction, and building logically toward the ask?
   - **Sequence pacing** — does the cadence (from Module 4) match list warmth, or does the funnel rush a cold list toward the pitch (or drag out an already-warm one)?
2. **Run a deliverability check** across every email: spam-trigger words and patterns in subject lines (from Module 5's flags) and bodies (ALL CAPS, excessive exclamation points, "free money," "guarantee," "act now" stacked together), a reasonable text-to-link ratio (too many links reads as spammy to filters), and confirmation that required unsubscribe/compliance footer language (from Module 1's constraints) is present in every email, not just the first.
3. **Flag the lowest-scoring 1-2 dimensions** and rewrite those sections rather than doing a generic full-funnel polish — targeted fixes beat diffuse ones.
4. **Check readability per email**: sentence length variation, paragraph length (favor short paragraphs suited to mobile inbox reading), and whether the subject line alone accurately previews the email.
5. **Produce at least one full A/B variant** — typically an alternate subject line + alternate CTA framing for the highest-leverage email in the funnel (usually the pricing email or the final cart-close email), since those two elements have the highest leverage-per-word-changed. Note what hypothesis each variant tests.

## Output format

```
SCORES (1-5): Clarity:_ Awareness Match:_ Subject Line Strength:_ Proof Density:_ Objection Coverage:_ CTA Strength/Progression:_ Sequence Pacing:_

DELIVERABILITY CHECK: [pass / issues found — list specific emails and fixes]

TOP FIXES MADE: [list, tied to lowest scores]

A/B VARIANT (on [email name]):
- Subject line: [alternate]
- CTA: [alternate]
- Hypothesis being tested: [one line]
```

## Handoff

This is the last stage — present the final scored funnel plus the A/B variant to the user as the finished deliverable, ready to load into their ESP with trigger/timing metadata intact. If any score is 3 or below, say so plainly rather than presenting the funnel as "done" — flag it as a known weak point and what it would take to fix (e.g. "Proof density scored low in the Sales sequence because there are no case studies yet — recommend collecting 2-3 before the sequence goes live").

<!-- surge:brain-handback:begin -->
## Hand back to the Business Brain

This skill establishes no standing fact about the business, so there is nothing it must write to the brain. If the founder said something new along the way — a price, a goal, a boundary, a phrase they actually use — hand it back anyway as a block in the file's own shape (a `###` heading per field carrying its key), and tell them which key it belongs under.

Where the block goes depends on where the brain is:

- **A Business Brain import tool is available** — `business_brain.import_portable`, or one whose name ends in `business_brain_import_portable` (the founder's Surge server, in Claude Code or Codex). Offer to send the block to it exactly as shown. It lands a draft, merged over what is already answered, so say 'draft', never 'updated'. The founder publishes it on the Business Brain page. If the tool refuses (a read-only connection, no business workspace), hand the block over for the founder to import on that page.
- **You read a hosted brain but have no import tool:** hand the block over for the founder to import on the Business Brain page. Never start a `BUSINESS-BRAIN.md` beside a hosted brain.
- **Otherwise, the brain is the file:** tell the founder to fold the block into `BUSINESS-BRAIN.md` under the matching keys, replacing the old answer rather than adding a second. In Claude Code, offer to update the file in place. On the Claude website or ChatGPT, remind them to replace the Project file.
<!-- surge:brain-handback:end -->

# Module 14: Content Optimizer

**Purpose:** Score the finished calendar on variety, hook strength, and platform fit, and produce A/B variants — the final quality gate before the month's content goes into production.

## Process

1. **Score the assembled calendar** on a simple rubric, 1-5 each:
   - **Pillar variety** — are pillars genuinely spread across the month, or clustered?
   - **Hook/format variety** — do hooks and formats vary meaningfully across the 30 days, or does the same pattern repeat too often?
   - **Platform-native fit** — does each piece of content actually fit its platform's real conventions, or does it read as generic/copy-pasted across platforms?
   - **Audience relevance** — does the content genuinely draw from Module 3's real pains/questions, or does it drift into generic industry topics?
   - **Production realism** — does Module 12's batching plan make this calendar actually achievable given the user's real capacity?
   - **CTA balance** — does the mix of soft/firm CTAs match Module 4's intended content-mix ratio, or does it skew too promotional (or too passive) relative to the stated goal?
2. **Flag the lowest-scoring 1-2 dimensions** and revise those specific days/modules rather than a generic pass over the whole calendar.
3. **Check for any accidental clustering or repetition** the assembler might have missed — e.g. two consecutive days both opening with a rhetorical question, or three days in the same week all in the same pillar.
4. **Produce at least one A/B variant** — typically an alternate hook for the single highest-potential piece of content in the calendar (usually a core repurposing piece), since that one piece of content likely drives the most total reach across its derivatives.

## Output format

```
SCORES (1-5): Pillar Variety:_ Hook/Format Variety:_ Platform-Native Fit:_ Audience Relevance:_ Production Realism:_ CTA Balance:_

TOP FIXES MADE: [list, tied to lowest scores]

A/B VARIANT (on the top core piece):
- Alternate hook: [detail]
- Hypothesis being tested: [one line]
```

## Handoff

This is the last stage — present the final scored calendar and the repurposing/batching system to the user as the finished deliverable, ready to produce against. If any score is 3 or below, say so plainly rather than presenting the calendar as "done" — flag it as a known weak point (e.g. "Production Realism scored low because the cadence assumes daily video across 3 platforms with no batching support for that format — recommend reducing video cadence or extending the batching schedule").

<!-- surge:brain-handback:begin -->
## Hand back to the Business Brain

This skill establishes facts the founder's Business Brain should keep:

- Content types `content_types`
- Platforms `content_platforms`
- Content rules `content_rules`

Before finishing, write those as a block in the file's own shape — a `###` heading per field carrying its key, then the answer (bullets for a list, a sentence or two for text) — and show it to the founder.

Where the block goes depends on where the brain is:

- **A Business Brain import tool is available** — `business_brain.import_portable`, or one whose name ends in `business_brain_import_portable` (the founder's Surge server, in Claude Code or Codex). Offer to send the block to it exactly as shown. It lands a draft, merged over what is already answered, so say 'draft', never 'updated'. The founder publishes it on the Business Brain page. If the tool refuses (a read-only connection, no business workspace), hand the block over for the founder to import on that page.
- **You read a hosted brain but have no import tool:** hand the block over for the founder to import on the Business Brain page. Never start a `BUSINESS-BRAIN.md` beside a hosted brain.
- **Otherwise, the brain is the file:** tell the founder to fold the block into `BUSINESS-BRAIN.md` under the matching keys, replacing the old answer rather than adding a second. In Claude Code, offer to update the file in place. On the Claude website or ChatGPT, remind them to replace the Project file.
<!-- surge:brain-handback:end -->

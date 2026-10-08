# Module 14: Audit Optimizer

**Purpose:** Score the audit itself on rigor, objectivity, and actionability before presenting it — an audit that overstates certainty or softens an uncomfortable finding to avoid friction isn't actually useful, the same discipline `business-analyst` applies to data-driven analysis, applied here to a broader qualitative one.

## Process

1. **Score the assembled report** on a simple rubric, 1-5 each:
   - **Rigor** — are findings backed by something concrete (Module 1's available data, stated reasoning), not just impressions?
   - **Objectivity** — does the report avoid softening or omitting obvious bad news to be polite?
   - **Actionability** — does every finding in the matrix have a concrete, specific next step, not a vague direction?
   - **Coverage** — were any of Modules 2-11 skipped or under-scoped relative to what Module 1's brief called for?
   - **Prioritization clarity** — is it genuinely obvious from the matrix what to do first?
2. **Flag the lowest-scoring 1-2 dimensions** and revise before presenting.
3. **Never overstate confidence** — explicitly flag anywhere Module 1's data/access limits mean a finding is a reasoned hypothesis rather than a verified fact, directly in the final report, not buried in an appendix.

## Output format

```
SCORES (1-5): Rigor:_ Objectivity:_ Actionability:_ Coverage:_ Prioritization Clarity:_

FIXES MADE: [list, tied to lowest scores]

CONFIDENCE CAVEATS: [findings that are directional/hypothesis-level given data limits, stated plainly]
```

## Handoff

This is the last stage — present the final scored audit report and opportunity matrix as the finished deliverable. If the user wants to act on a specific finding, hand off directly to the skill mapped in Module 12 rather than re-diagnosing it from scratch.

<!-- surge:brain-handback:begin -->
## Hand back to the Business Brain

This skill establishes facts the founder's Business Brain should keep:

- Current goals `current_goals`
- Current challenges `current_challenges`

Before finishing, write those as a block in the file's own shape — a `###` heading per field carrying its key, then the answer (bullets for a list, a sentence or two for text) — and show it to the founder.

Where the block goes depends on where the brain is:

- **A Business Brain import tool is available** — `business_brain.import_portable`, or one whose name ends in `business_brain_import_portable` (the founder's Surge server, in Claude Code or Codex). Offer to send the block to it exactly as shown. It lands a draft, merged over what is already answered, so say 'draft', never 'updated'. The founder publishes it on the Business Brain page. If the tool refuses (a read-only connection, no business workspace), hand the block over for the founder to import on that page.
- **You read a hosted brain but have no import tool:** hand the block over for the founder to import on the Business Brain page. Never start a `BUSINESS-BRAIN.md` beside a hosted brain.
- **Otherwise, the brain is the file:** tell the founder to fold the block into `BUSINESS-BRAIN.md` under the matching keys, replacing the old answer rather than adding a second. In Claude Code, offer to update the file in place. On the Claude website or ChatGPT, remind them to replace the Project file.
<!-- surge:brain-handback:end -->

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

This skill establishes facts the founder's `BUSINESS-BRAIN.md` should keep:

- Current goals `current_goals`
- Current challenges `current_challenges`

Before finishing, write those as a block in the file's own shape — a `###` heading per field carrying its key, then the answer (bullets for a list, a sentence or two for text) — and tell the founder to fold it into `BUSINESS-BRAIN.md` under the matching keys, replacing the old answer rather than adding a second. In Claude Code, offer to update the file in place. On the Claude website or ChatGPT, remind them to replace the Project file.
<!-- surge:brain-handback:end -->

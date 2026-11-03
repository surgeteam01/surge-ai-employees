# Module 14: Brand Identity Optimizer

**Purpose:** Score the finished identity on distinctiveness, consistency, and executability — the final quality gate before handing this to a designer or starting to apply it.

## Process

1. **Score the assembled identity** on a simple rubric, 1-5 each:
   - **Distinctiveness** — does this stand out from Module 6's competitor landscape, or blend in?
   - **Personality consistency** — is every element (color, type, logo direction, imagery) traceable to Module 4's profile, or does something feel disconnected?
   - **Voice alignment** — does the visual identity match the verbal identity (Module 11), or is there an unresolved mismatch?
   - **Executability** — is Module 9's logo brief and Module 7/8's color/type specification precise enough that a designer or AI tool could actually produce a consistent result from it, or is it still too vague?
   - **Practical readiness** — does Module 12's application guide cover what the business actually needs right now, given its stage?
2. **Flag the lowest-scoring 1-2 dimensions** and revisit those specific modules.
3. **Produce at least one variant** — typically an alternate color palette or logo direction, so the user sees the decision was made among real alternatives.

## Output format

```
SCORES (1-5): Distinctiveness:_ Personality Consistency:_ Voice Alignment:_ Executability:_ Practical Readiness:_

TOP FIXES MADE: [list, tied to lowest scores]

ALTERNATE VARIANT:
- Alternate color palette or logo direction: [detail]
- Reasoning: [one line]
```

## Handoff

Present the final scored guidelines document to the user as the finished deliverable, ready to hand to a designer or execute via AI image tools. Flag any score of 3 or below plainly rather than presenting the identity as "done."

<!-- surge:brain-handback:begin -->
## Hand back to the Business Brain

This skill establishes facts the founder's Business Brain should keep:

- Brand colours `brand_colors`
- Typefaces `brand_fonts`
- Logo rules `brand_logo_rules`
- Imagery style `brand_imagery_style`
- Design don'ts `brand_design_donts`

Before finishing, write those as a block in the file's own shape — a `###` heading per field carrying its key, then the answer (bullets for a list, a sentence or two for text) — and show it to the founder.

Where the block goes depends on where the brain is:

- **A Business Brain import tool is available** — `business_brain.import_portable`, or one whose name ends in `business_brain_import_portable` (the founder's Surge server, in Claude Code or Codex). Offer to send the block to it exactly as shown. It lands a draft, merged over what is already answered, so say 'draft', never 'updated'. The founder publishes it on the Business Brain page. If the tool refuses (a read-only connection, no business workspace), hand the block over for the founder to import on that page.
- **You read a hosted brain but have no import tool:** hand the block over for the founder to import on the Business Brain page. Never start a `BUSINESS-BRAIN.md` beside a hosted brain.
- **Otherwise, the brain is the file:** tell the founder to fold the block into `BUSINESS-BRAIN.md` under the matching keys, replacing the old answer rather than adding a second. In Claude Code, offer to update the file in place. On the Claude website or ChatGPT, remind them to replace the Project file.
<!-- surge:brain-handback:end -->

# Module 14: Product Photo Optimizer

**Purpose:** Score the finished plan on consistency, platform compliance, and conversion likelihood, and produce variants — the final quality gate before generating and publishing images.

## Process

1. **Score the assembled plan** on a simple rubric, 1-5 each:
   - **Style consistency** — do all prompts genuinely share Module 5's style descriptors, or does something drift?
   - **Feature-to-visual clarity** — does each shot actually demonstrate Module 2/6's key features, or is something generic?
   - **Platform compliance** — does every shot meet Module 10's actual technical requirements?
   - **Prompt specificity** — are Module 7's prompts concrete enough to produce a predictable, usable result?
   - **Objection coverage** — does the shot list address Module 3's identified visual objections?
   - **Testing readiness** — is Module 12's conversion test plan concrete and ready to run once images are live?
2. **Flag the lowest-scoring 1-2 dimensions** and revisit those specific modules.
3. **Produce at least one prompt variant** — an alternate version of the hero shot's prompt, since it's the highest-leverage single image in the plan.

## Output format

```
SCORES (1-5): Style Consistency:_ Feature-to-Visual Clarity:_ Platform Compliance:_ Prompt Specificity:_ Objection Coverage:_ Testing Readiness:_

TOP FIXES MADE: [list, tied to lowest scores]

PROMPT VARIANT (hero shot):
- Alternate prompt: [detail]
- Hypothesis being tested: [one line]
```

## Handoff

Present the final scored plan to the user as the finished deliverable, ready to run through an AI image tool. Flag any score of 3 or below plainly rather than presenting the plan as "done."

<!-- surge:brain-handback:begin -->
## Hand back to the Business Brain

This skill establishes facts the founder's Business Brain should keep:

- Imagery style `brand_imagery_style`

Before finishing, write those as a block in the file's own shape — a `###` heading per field carrying its key, then the answer (bullets for a list, a sentence or two for text) — and show it to the founder.

Where the block goes depends on where the brain is:

- **A Business Brain import tool is available** — `business_brain.import_portable`, or one whose name ends in `business_brain_import_portable` (the founder's Surge server, in Claude Code or Codex). Offer to send the block to it exactly as shown. It lands a draft, merged over what is already answered, so say 'draft', never 'updated'. The founder publishes it on the Business Brain page. If the tool refuses (a read-only connection, no business workspace), hand the block over for the founder to import on that page.
- **You read a hosted brain but have no import tool:** hand the block over for the founder to import on the Business Brain page. Never start a `BUSINESS-BRAIN.md` beside a hosted brain.
- **Otherwise, the brain is the file:** tell the founder to fold the block into `BUSINESS-BRAIN.md` under the matching keys, replacing the old answer rather than adding a second. In Claude Code, offer to update the file in place. On the Claude website or ChatGPT, remind them to replace the Project file.
<!-- surge:brain-handback:end -->

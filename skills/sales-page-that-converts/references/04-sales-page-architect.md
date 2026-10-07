# Module 4: Sales Page Architect

**Purpose:** Produce the full section-by-section outline, mapped to the buyer's awareness stage from Module 3, before any actual copy gets written.

**Start from the blueprint, not from a blank page.** `references/00-page-blueprint.md` holds the default 17-block order. Your job here is not to invent a structure — it is to instantiate that one for *this* offer, pick the vocabulary column, and record any deviation with its reason.

## Process

1. **Load `00-page-blueprint.md`** and take its block list as the default outline.
2. **Choose the vocabulary column** from the blueprint's translation table (course / service / SaaS / coaching) based on the Module 1 brief, and state it in the outline. Every later module inherits it. A page that says "enrol" in the hero and "book a call" in the footer is a template someone forgot to finish.
3. **Apply the awareness stage as a deviation, not as a fresh structure.** Module 3 gives the stage; the blueprint's **Deviation rules** say what that stage removes:
   - *Unaware / Problem-aware* → full blueprint, **plus** a problem/agitation section between blocks 2 and 3. This is the one case where the blueprint alone is not enough: the reader cannot want the end state in block 3 until the pain in front of it is vivid.
   - *Solution-aware / Product-aware* → the blueprint as written.
   - *Most aware* → collapse to blocks 1, 3, 4, 5, 7, 10, 11, 16.
   - *Low ticket / impulse price* → drop blocks 8, 14, 15 and one CTA block.
   Anything else you remove needs a written reason in the outline. The blueprint's never-drop list is not negotiable at any stage.
4. **Instantiate each surviving block** with its offer-specific name, its job, and an approximate length. Name the real thing — "What's Inside the 90-Day Revenue Sprint", not "Offer stack".
5. **Count the CTA placements and say the number.** Four in the full blueprint (blocks 5, 10, 13, 16) plus the header bar. If the outline has fewer than two, the outline is wrong.
6. **Note which modules feed which blocks**, so nothing gets built twice — the blueprint's table already does most of this.
7. **Flag placeholder blocks.** A block whose source module has nothing yet (typically proof, blocks 4 and 6) is marked `NEEDS INPUT` here, not filled with invented content at assembly time.

## Output format

```
PAGE LENGTH: [full blueprint / collapsed / blueprint + problem section] — reason: [awareness stage from Module 3]
VOCABULARY: [course / service / SaaS / coaching] — so: [enrol|get started|start trial|apply] + [module|phase|feature|session]

BLOCK OUTLINE (blueprint order):
0. Header bar — job: [...] — fed by: 12
1. [offer-specific name] — job: [...] — fed by: 5
...

DEVIATIONS: [block dropped/added] — reason: [...]
CTA PLACEMENTS: [n] — at blocks [...]
NEEDS INPUT: [blocks with no source content yet]
```

## Handoff

This outline is the skeleton Module 13 (Assembler) will fill in, and Module 14 scores the finished page against it. Every block must map to exactly one upstream module's output — if a block doesn't have a clear source, flag it as `NEEDS INPUT` now rather than discovering the gap at assembly time.

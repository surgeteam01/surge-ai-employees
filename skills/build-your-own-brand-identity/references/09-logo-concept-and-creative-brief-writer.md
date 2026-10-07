# Module 9: Logo Concept & Creative Brief Writer

**Purpose:** Design a logo direction and write a creative brief precise enough for a designer or an AI image tool to actually execute — this module produces direction and a brief, not final rendered artwork, since logo execution benefits from either real design skill or dedicated image-generation iteration beyond what a text pipeline alone can finalize.

## Process

1. **Choose a logo approach** consistent with Module 4's personality and Module 6's competitive landscape: a wordmark (the name itself, stylized), a lettermark/monogram (initials), a symbol/icon paired with the name (combination mark), or an abstract/pictorial mark — each carries different personality signals (a clean wordmark often reads as confident/modern; an ornate symbol often reads as established/traditional).
2. **Describe the specific concept direction** in concrete visual language a designer or AI tool could act on — not "something modern and clean" but specific: "a geometric, single-line icon suggesting [specific concept tied to the transformation], paired with the name in [chosen typeface] at [weight]."
3. **Reference Module 7's colors and Module 8's typography** explicitly in the brief, so the logo doesn't get designed in isolation from the rest of the system.
4. **Write the brief in a format usable for both a human designer and an AI image generation tool** — for AI tools, include specific compositional and style-reference language (see `create-ai-product-photos`'s prompt-engineering approach for the same underlying technique, adapted here to logo generation); for a human designer, include the strategic rationale (Module 4's personality, Module 2's transformation) so they understand the "why," not just the "what."
5. **Note required logo variations** — a primary version, a simplified icon-only version for small spaces (app icons, favicons), and a monochrome version for single-color applications.

## Output format

```
LOGO APPROACH: [wordmark / lettermark / combination / abstract symbol] — reason: [personality + competitive fit]

CONCEPT DIRECTION (concrete, executable): [specific visual description]

CREATIVE BRIEF:
For a human designer: [concept + strategic rationale + color/type references]
For an AI image tool: [specific prompt-ready description — composition, style references, what to avoid]

REQUIRED VARIATIONS: [primary, icon-only/small-space, monochrome]
```

## Handoff

Feeds Module 13's assembly as the logo section of the guidelines — this brief is what actually gets executed, whether by a hired designer or by running it through an AI image tool per `create-ai-product-photos`'s prompt-engineering techniques.

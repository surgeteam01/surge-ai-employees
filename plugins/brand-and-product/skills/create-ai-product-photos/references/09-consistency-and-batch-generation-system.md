# Module 9: Consistency & Batch Generation System

**Purpose:** Design a system for keeping many product photos visually consistent across a whole catalog — a real risk with AI generation, since each generation is independent unless deliberately constrained to match previous results.

## Process

1. **Recommend a consistency technique matched to the tool** (Module 1): using a fixed seed value where the tool supports it (produces more similar results across generations of the same prompt structure), using a style-reference image (many tools support feeding a reference image to match style/lighting), or maintaining a strict, reusable prompt template (Module 7's style descriptors held constant, only the subject/context varying) where seed/reference features aren't available.
2. **Design a prompt template structure** — a consistent scaffold (style descriptors + background rules + technical modifiers held constant) with only the product-specific and shot-specific elements changing per item, so generating photos for a new product in the catalog doesn't require rebuilding the whole approach from scratch.
3. **Recommend a review step** — generating a small batch first and checking for consistency before committing to generating the full catalog, since AI tools can drift in unexpected ways across many generations.
4. **Flag realistic limitations** — AI image generation, even with these techniques, may not achieve perfect pixel-level consistency the way real photography with fixed studio lighting would; set expectations accordingly and recommend post-processing (Module 11) to close small gaps.

## Output format

```
CONSISTENCY TECHNIQUE: [fixed seed / style-reference image / strict template] — reason: [tool capability from Module 1]
REUSABLE PROMPT TEMPLATE: [scaffold with fixed style/background/technical elements, variable product/shot-specific elements]
REVIEW STEP: [generate small batch first, check consistency, then scale]
REALISTIC LIMITATIONS: [set expectations on achievable consistency]
```

## Handoff

Feeds Module 13's assembly as the operational approach for producing the full shot list at scale.

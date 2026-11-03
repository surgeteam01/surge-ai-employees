# Module 7: AI Prompt Engineering Lab

**Purpose:** Write and score the actual prompts for each shot — adapted from `sales-page-that-converts`'s Headline Lab iteration-and-scoring pattern, applied to image-generation prompts instead of copy. This is the module whose output actually gets pasted into an AI image tool.

## Process

1. **Structure each prompt with the core components AI image tools respond to**: subject (the product, described specifically — material, color, shape), action/context (per Module 6's feature-to-visual translation), composition (angle, framing — per Module 8), lighting/style (per Module 5's descriptors), background (per Module 8), and technical modifiers specific to the tool in use (Module 1) — e.g. aspect ratio flags, quality/style parameters, negative prompts for common AI-image artifacts (extra fingers, warped text, unrealistic reflections) if the tool supports them.
2. **Generate 2-3 prompt variants per shot** — varying angle, composition emphasis, or context slightly, so the user has real options to generate and compare rather than a single untested prompt.
3. **Write prompts in the specific syntax convention of the tool in use** (Module 1) — Midjourney, DALL-E, and other tools have different conventions for parameters, weighting, and negative prompts; a generic prompt not adapted to the specific tool underperforms.
4. **Score each prompt variant** on: Specificity (concrete enough to produce a consistent result, not so vague the tool guesses), Style consistency (incorporates Module 5's descriptors), Feature clarity (incorporates Module 6's visual translation), and Platform fit (matches Module 4's requirement, e.g. specifies a clean background if this is a marketplace main image).

## Output format

```
SHOT: [from Module 4]

PROMPT VARIANT 1: [full prompt text, in the target tool's syntax]
PROMPT VARIANT 2: [full prompt text]
PROMPT VARIANT 3: [full prompt text]

SCORES (1-5 per variant on Specificity/Style Consistency/Feature Clarity/Platform Fit): [...]
TOP PICK: [variant] — reasoning: [...]

(repeat per shot in Module 4's list)
```

## Handoff

These are the actual prompts the user runs through their AI tool — feeds Module 9 (consistency system references these as the base templates) and Module 13's assembly.

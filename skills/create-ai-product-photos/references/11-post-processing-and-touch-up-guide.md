# Module 11: Post-Processing & Touch-Up Guide

**Purpose:** Identify what needs fixing after AI generation, before publishing — AI-generated images commonly carry specific artifacts that need a human quality check, and this module exists to make that check systematic rather than assumed away.

## Process

1. **Flag common AI-image artifacts to check for**: distorted or extra fingers/limbs if any hands/people appear, warped or nonsensical text/logos rendered into the image, unrealistic reflections or lighting inconsistencies, and subtle asymmetries in product shape that don't match the real product's actual design.
2. **Recommend background clean-up steps** — even with a background-rule prompt (Module 8), AI-generated backgrounds sometimes need manual cleanup (background removal tools, edge refinement) to meet a strict platform requirement (Module 10) precisely.
3. **Recommend color/lighting correction** — a quick pass to confirm generated images match Module 5's intended color grading and don't have generation-introduced color casts.
4. **Recommend a final side-by-side consistency check** across the batch, comparing generated images against each other and against Module 5's style reference before publishing.

## Output format

```
ARTIFACT CHECKLIST: [fingers/limbs, text/logos, reflections/lighting, shape asymmetry — check each generated image]
BACKGROUND CLEAN-UP STEPS: [recommended tools/approach if needed]
COLOR/LIGHTING CORRECTION: [quick pass against Module 5's reference]
FINAL CONSISTENCY CHECK: [side-by-side comparison before publishing]
```

## Handoff

This is a practical checklist the user runs after generating images, before Module 13's assembly treats them as finished.

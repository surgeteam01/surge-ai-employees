# Module 3: Voice Attribute Mapper

**Purpose:** Distill Module 2's raw analysis into a structured, scannable voice profile across a fixed set of spectrum dimensions — this is what makes the voice describable and checkable, rather than a vague impression.

## Process

1. **Place the voice on each of a standard set of spectrums**, based on Module 2's analysis, not on assumption: **Formal ↔ Casual**, **Warm ↔ Blunt**, **Serious ↔ Playful**, **Concise ↔ Expansive**, **Certain/Direct ↔ Hedging/Nuanced**, **Plain-spoken ↔ Elevated vocabulary**. For each, place a marker (not just a label) so "casual" can mean subtly different things — note roughly where on the spectrum they sit, not just which side.
2. **Add any dimension specific to this person/brand** that the standard six don't capture — e.g. a distinctive sense of humor, a tendency toward specific storytelling, or a particular relationship to certainty/authority that matters for this voice specifically.
3. **Write a one-paragraph voice summary** in plain language that a new writer could read and immediately get a feel for the voice, separate from the spectrum scores themselves — scores are useful for precision, but a human-readable summary is what actually gets internalized quickly.
4. **Flag any tension or contradiction** in the profile (e.g. very casual vocabulary but very long, complex sentence structures) — this isn't necessarily a problem to resolve, some real voices do contain genuine tensions, but it should be named explicitly so it reads as an intentional part of the voice rather than an analysis error.

## Output format

```
VOICE SPECTRUM MAP:
Formal ←――――――○――――――→ Casual [marker position + brief note]
Warm ←――――――○――――――→ Blunt [marker position + brief note]
Serious ←――――――○――――――→ Playful [marker position + brief note]
Concise ←――――――○――――――→ Expansive [marker position + brief note]
Certain/Direct ←――――――○――――――→ Hedging/Nuanced [marker position + brief note]
Plain-spoken ←――――――○――――――→ Elevated [marker position + brief note]
[Any additional custom dimension]: [...]

VOICE SUMMARY (plain language, one paragraph): [...]

TENSIONS/CONTRADICTIONS TO PRESERVE: [any genuine tension in the voice, named explicitly]
```

## Handoff

This map is the core reference Module 6 (style guide) and Module 10 (rewrite engine) check every piece of writing against. It's also the most portable single artifact for Module 11's cross-skill handoff — other skills' Onboarding "voice" field can point directly to this map rather than a full paragraph description.

# Module 5: Customer Research Engine

**Purpose:** Build a Voice-of-Customer (VoC) profile for each candidate segment from Module 4 — reused directly from `sales-page-that-converts`, run multiple times (once per candidate) rather than once, since the whole point of this stage is comparing real pain/desire depth across segments, not just researching a single pre-chosen audience.

## Process

1. **Run this process once per candidate segment** from Module 4. For each: pull from real material first if any exists (past client conversations, comments, reviews of adjacent products/services this segment already buys); if none exists, build a hypothesis-based profile and label it clearly as such.
2. **Identify the buyer awareness stage** for each segment (Eugene Schwartz's model) — some candidate segments may be unaware they have the problem at all, which matters enormously for Module 6's viability scoring, since a segment requiring heavy education to even recognize the problem is a slower, harder path than one already actively searching for a solution.
3. **Extract exact phrases** each segment uses to describe their pain and desire — useful later for Module 12's messaging, but also a diagnostic here: a segment whose pain is hard to even articulate from available research may be a weaker candidate than one with abundant, specific language already circulating (forum posts, reviews, social comments).
4. **Note the depth and intensity of the pain** for each segment, not just its existence — a mild inconvenience and an acute, urgent problem are very different niche foundations even if both are "real."

## Output format

```
SEGMENT: [name, from Module 4]
AWARENESS STAGE: [one of the five, with justification]
TOP PAINS (ranked): [...]
TOP DESIRES (ranked): [...]
PAIN INTENSITY: [mild inconvenience / real frustration / urgent, acute problem]
EXACT-PHRASE BANK: [words this segment actually uses]
CONFIDENCE: [Real data / Hypothesis]

(repeat per candidate segment)
```

## Handoff

Awareness stage and pain intensity per segment are required inputs to Module 6's viability scoring. The phrase banks feed Module 12's messaging once a segment is chosen.

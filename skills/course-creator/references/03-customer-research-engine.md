# Module 3: Customer Research Engine

**Purpose:** Build a Voice-of-Customer (VoC) and student profile — the real pains, desires, objections, exact phrases, and realistic starting skill level — so the curriculum is pitched at the right level and the marketing speaks the student's actual language.

## Process

1. **Pull from real material first**, if any exists: past student feedback, beta cohort results, reviews of similar courses, or support questions from an existing audience. Ask the user if any of this exists before generating from scratch.
2. **If no real material exists**, build a hypothesis-based profile from the audience description and general market knowledge — label it clearly as a hypothesis and recommend validating it against a small beta cohort before a full launch.
3. **Identify the buyer awareness stage** (Eugene Schwartz's model) since it affects Module 6's launch pacing, and **separately identify the student's realistic starting skill level** (a distinct axis from awareness stage) — pitching a course above or below the actual audience's starting point is one of the most common causes of poor completion, regardless of how well the marketing converts.
4. **Extract exact phrases** the audience uses to describe their pain, desire, and how they talk about their current skill level ("I know the basics but get stuck when...") — these inform Module 4's curriculum sequencing and Module 6's marketing.
5. **Identify likely reasons for non-completion specific to this audience** — time scarcity, overwhelm, unclear next steps, lack of accountability — since this feeds directly into Module 12's completion system design.

## Output format

```
AWARENESS STAGE: [one of the five, with justification]
STARTING SKILL LEVEL: [realistic assessment — complete beginner / some experience / intermediate, etc.]

TOP PAINS (ranked):
1. ...
2. ...
3. ...

TOP DESIRES (ranked):
1. ...
2. ...
3. ...

LIKELY OBJECTIONS:
- ...

LIKELY NON-COMPLETION REASONS: [time scarcity / overwhelm / unclear next steps / lack of accountability / other]

EXACT-PHRASE BANK: [words the audience actually uses]

CONFIDENCE: [Real data / Hypothesis — recommend validation]
```

## Handoff

Starting skill level and non-completion reasons are required inputs to Module 4 (curriculum pacing/sequencing) and Module 12 (completion system design) specifically — these are the two places a course-creation skill needs research beyond what a generic sales-focused skill would gather. This profile is also passed directly into the Stage 6 handoff to `launch-a-digital-product`.

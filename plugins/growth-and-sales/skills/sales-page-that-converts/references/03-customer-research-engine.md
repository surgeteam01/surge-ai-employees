# Module 3: Customer Research Engine

**Purpose:** Build a Voice-of-Customer (VoC) profile — the real pains, desires, objections, and exact phrases the audience uses — so every later module writes in the customer's language, not the business's.

## Process

1. **Pull from real material first**, if any exists: reviews, testimonials, support tickets, call transcripts, survey responses, comments on the business's own content. Ask the user if any of this exists before generating from scratch.
2. **If no real material exists**, build a hypothesis-based VoC profile from the audience description and general market knowledge — but label it clearly as a hypothesis and recommend validating it against 5-10 real conversations before the page goes live.
3. **Identify the buyer awareness stage** (Eugene Schwartz's model), since this determines the whole page architecture in Module 4:
   - *Unaware* — doesn't know they have the problem
   - *Problem-aware* — knows the problem, not the solution category
   - *Solution-aware* — knows solutions exist, hasn't found the right one
   - *Product-aware* — knows this product, hasn't bought
   - *Most aware* — ready to buy, just needs the offer and the push
4. **Extract exact phrases** — the specific words the audience uses to describe their pain and desire, not the business's internal jargon. These get reused verbatim (or near-verbatim) in headlines and lead copy.

## Output format

```
AWARENESS STAGE: [one of the five above, with a one-line justification]

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

EXACT-PHRASE BANK (words the audience actually uses):
- ...

CONFIDENCE: [Real data / Hypothesis — recommend validation]
```

## Handoff

Awareness stage drives Module 4's structure choice (long-form vs short-form). Pains and desires drive Module 5 (headlines) and Module 6 (lead). Objections feed directly into Module 9. The exact-phrase bank should show up throughout the whole page — flag it for reuse rather than letting later modules default to generic marketing language.

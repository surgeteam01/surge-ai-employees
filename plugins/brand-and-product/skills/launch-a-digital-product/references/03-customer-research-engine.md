# Module 3: Customer Research Engine

**Purpose:** Build a Voice-of-Customer (VoC) profile — the real pains, desires, objections, and exact phrases the audience uses — so the pre-launch content, sales page, and every launch email are written in the customer's language, not the business's.

## Process

1. **Pull from real material first**, if any exists: past customer conversations, beta feedback, reviews, support tickets, or comments on related content. Ask the user if any of this exists before generating from scratch.
2. **If no real material exists**, build a hypothesis-based VoC profile from the audience description and general market knowledge — label it clearly as a hypothesis and recommend validating it against real pre-launch content engagement (comments, replies, questions asked) before the cart opens.
3. **Identify the buyer awareness stage** (Eugene Schwartz's model), since this determines how much pre-launch content is needed before the cart can open:
   - *Unaware / Problem-aware* — needs a longer, more educational pre-launch run.
   - *Solution-aware / Product-aware* — can run a shorter pre-launch sequence focused more on differentiation and proof.
   - *Most aware* — existing customers or a highly engaged list; pre-launch can be brief, focused mostly on building excitement rather than building belief from scratch.
4. **Extract exact phrases** — the specific words the audience uses to describe their pain and desire. These get reused verbatim (or near-verbatim) in the pre-launch content and handed to the Stage 6 sales page handoff.

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

Awareness stage drives Module 4's decision on pre-launch length and Module 5's content depth. This profile gets passed directly into the Stage 6 handoff to `sales-page-that-converts` so its own Customer Research stage doesn't need to re-run. Objections feed Module 7 and the sales page's objection handling.

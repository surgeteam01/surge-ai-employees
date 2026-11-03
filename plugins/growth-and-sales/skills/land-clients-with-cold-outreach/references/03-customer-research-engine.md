# Module 3: Customer Research Engine

**Purpose:** Build a Voice-of-Customer (VoC) and ICP profile — the real pains, desires, objections, and exact phrases the target buyer uses — so every message in the sequence is written in their language, not the business's.

## Process

1. **Pull from real material first**, if any exists: past client conversations, sales call transcripts, reviews, support tickets, LinkedIn comments from people in the ICP, or replies to past outreach attempts. Ask the user if any of this exists before generating from scratch.
2. **If no real material exists**, build a hypothesis-based VoC/ICP profile from the ideal client profile (Module 1) and general market knowledge — but label it clearly as a hypothesis and recommend validating it against the first 10-20 real replies before scaling send volume.
3. **Identify the buyer awareness stage** (Eugene Schwartz's model), since this determines how direct or educational Module 5's sequence needs to be:
   - *Unaware* — doesn't know they have the problem (cold outreach to this stage is hard and slow; flag if this looks like the case)
   - *Problem-aware* — knows the problem, not the solution category
   - *Solution-aware* — knows solutions exist, hasn't found the right one
   - *Product-aware* — knows of this business already, hasn't engaged
   - *Most aware* — has been considering reaching out or was referred, just needs the nudge
4. **Extract exact phrases** — the specific words the ICP uses to describe their pain, in their own industry's language, not the business's internal jargon. These get reused verbatim (or near-verbatim) in Module 6's opening lines.
5. **Note likely reachability and channel preference** for this ICP alongside awareness stage — a senior executive ICP may be far more reachable by a sharp cold email than a LinkedIn connection request, and vice versa for an individual contributor.

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

EXACT-PHRASE BANK (words the ICP actually uses):
- ...

LIKELY CHANNEL PREFERENCE: [email / LinkedIn / phone — reasoning]

CONFIDENCE: [Real data / Hypothesis — recommend validation]
```

## Handoff

Awareness stage and channel preference drive Module 5's architecture (how many touches, how direct the ask can be, which channel leads). Pains and desires drive Module 6 (opening lines) and Module 7 (message sequence). Objections feed directly into Module 9. The exact-phrase bank should show up throughout the whole sequence — flag it for reuse rather than letting later modules default to generic prospecting language ("I hope this finds you well," "I wanted to reach out").

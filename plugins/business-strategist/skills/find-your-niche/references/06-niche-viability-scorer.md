# Module 6: Niche Viability Scorer

**Purpose:** Score each candidate segment side by side on the factors that actually predict a viable niche — this is the analytical core of the pipeline, turning a list of interesting options into a defensible recommendation.

## Process

1. **Score each candidate segment (1-5) on**:
   - **Market size** — are there enough people in this segment to build a sustainable business, or is it too narrow to ever generate meaningful revenue?
   - **Willingness/ability to pay** — does this segment have both the budget and the buying authority (some segments have the pain but not the money, or the money but no buying authority — e.g. an employee, not a decision-maker)?
   - **Pain intensity** (from Module 5) — urgent, acute pain converts far more easily and forgives a less polished offer than mild inconvenience.
   - **Personal fit** (from Module 2) — does the person have real skill, results, or an unfair advantage serving this specific segment, or would they be starting from a standing start?
   - **Competition level** (from Module 3) — is this a crowded, saturated angle or a genuine gap?
   - **Reachability** — can this segment actually be found and reached through channels realistically available to the person (from Module 4's reachability notes)?
2. **Total the scores** and rank the candidates, but present the full breakdown, not just the total — a segment that wins on total score by being average everywhere is a different recommendation than one that wins by being exceptional on personal fit and pain intensity even with a smaller market size, and the user should see that distinction to make an informed choice.
3. **Flag any segment that scores well analytically but conflicts with Module 1's stated constraints** (e.g. a great niche that requires a long, slow trust-building runway when the user needs fast profitability) — the "best" niche on paper isn't automatically the right choice given real constraints.
4. **Present a clear top recommendation with reasoning**, while explicitly inviting the user to weigh in rather than treating the highest score as an automatic final decision — this remains their business and their judgment call.

## Output format

```
VIABILITY SCORES (1-5 each):

SEGMENT 1: [name]
Market Size:_ Willingness/Ability to Pay:_ Pain Intensity:_ Personal Fit:_ Competition Level:_ Reachability:_ — TOTAL:_

(repeat per segment)

RANKING: [ordered list with total scores]
CONSTRAINT FLAGS: [any segment that scores well but conflicts with Module 1's stated constraints]
TOP RECOMMENDATION: [segment] — reasoning: [why, acknowledging any trade-offs]
```

## Handoff

The chosen segment (confirmed with the user, not just auto-selected by score) becomes the single focus for every remaining module. If the user picks a different segment than the top recommendation, respect that choice and proceed with their pick rather than repeatedly steering back to the higher-scored option.

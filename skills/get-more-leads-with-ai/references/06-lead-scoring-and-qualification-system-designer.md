# Module 6: Lead Scoring & Qualification System Designer

**Purpose:** Define the criteria that separate a sales-ready lead from one that needs more nurture, and design how AI/automation can apply this scoring consistently — without this, "more leads" easily becomes "more unqualified leads," which doesn't actually help the business.

## Process

1. **Define fit criteria** — the attributes of a genuinely good-fit lead for this offer (from Module 2/3): budget range, company size/role if B2B, specific situation markers that indicate real need.
2. **Define intent signals** — behavioral signals indicating readiness to buy: specific answers given in Module 5's chatbot flow, engagement depth (downloaded the lead magnet vs. also visited the pricing page), speed/directness of response to outreach.
3. **Design a simple scoring model** — a small number of weighted criteria (not an overly complex point system that's hard to maintain) that combines fit and intent into a clear tier: hot (route immediately to Module 10's booking), warm (route to Module 8's outreach), cold/not-yet-ready (route to Module 9's nurture).
4. **Note what can realistically be automated** given Module 1's tech stack — some scoring can run automatically off form/chatbot data; some requires a human review step, and this module should say so explicitly rather than assuming full automation is always feasible.

## Output format

```
FIT CRITERIA: [budget/role/situation markers]
INTENT SIGNALS: [chatbot answers, engagement depth, response behavior]

SCORING MODEL:
Hot (score: [x]) → routes to: Module 10 (booking)
Warm (score: [x]) → routes to: Module 8 (outreach)
Cold/not-ready (score: [x]) → routes to: Module 9 (nurture)

AUTOMATION FEASIBILITY: [what can run automatically vs. needs human review, given Module 1's stack]
```

## Handoff

This scoring model is the routing logic Module 13's assembled system operates on — Modules 8, 9, and 10 should each reference the specific tier that routes to them.

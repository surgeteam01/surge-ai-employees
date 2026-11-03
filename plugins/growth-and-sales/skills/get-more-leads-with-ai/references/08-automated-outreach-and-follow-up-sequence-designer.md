# Module 8: Automated Outreach & Follow-Up Sequence Designer

**Purpose:** Design the outreach and follow-up sequence for warm leads (per Module 6's routing), adapted from `land-clients-with-cold-outreach`'s Message Sequence Writer and `build-your-email-funnel`'s Sales Sequence Writer, with an emphasis on what AI can realistically personalize at scale.

## Process

1. **Confirm this is for warm-tier leads** (from Module 6) — hot leads route to Module 10's immediate booking, cold leads to Module 9's nurture; this sequence is specifically for leads worth a more direct, faster-paced follow-up than a long nurture sequence but not yet ready to book without any further touch.
2. **Design a short sequence** (typically 3-5 touches) using Module 7's personalization variables, adapting `land-clients-with-cold-outreach`'s opening-line and sequence-writing logic.
3. **Identify what AI can realistically personalize at scale** — inserting real segment variables and trigger references (from Module 7) into a templated structure is realistic at volume; claiming deep 1:1 research that wasn't actually done is not, and this module should flag the difference explicitly rather than implying more personalization than the actual data supports.
4. **Design the handoff to a human** — at what point (a reply, a specific engagement signal) does this move from automated to a real person taking over the conversation, since fully automated closing is rarely appropriate once a lead is genuinely engaged.

## Output format

```
OUTREACH SEQUENCE ([count] touches, warm-tier):
TOUCH 1: [body, using Module 7's variables]
TOUCH 2: [body]
(repeat)

AI PERSONALIZATION REALISM CHECK: [what's genuinely personalized vs. templated with variables inserted]
HUMAN HANDOFF TRIGGER: [what signal moves this lead to a real person]
```

## Handoff

Feeds Module 13's assembly as the warm-lead automation track.

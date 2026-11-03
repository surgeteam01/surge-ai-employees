# Module 4: The design

**Purpose:** Compose. Everything the interview, the inventory and the market produced
becomes one design the person can read in two minutes and a reviewer can accept.

## The one rule that sorts every need

Each need says what would satisfy it — a tool, a skill, a workflow, a connector, a
market endpoint, or nothing you know of — and gets exactly one route:

| Route | When | Who acts |
|---|---|---|
| **have** | the inventory holds it | nobody |
| **grant** | it is in Ops' registry but not in this person's charter | an admin, narrowing a coworker to them; never you |
| **propose** | a skill or a workflow can be written from what exists | you write it; a reviewer accepts it |
| **connect** | a catalogue provider not bound, or a market endpoint | an admin binds it; a market endpoint is requested by name with its stated price |
| **request** | a connector, tool or agent that must be built | a developer, through a feature request |

Where you have the design tools, the route comes from the tool and you keep it. Where
you do not, apply the table yourself and say so. Never set a route by preference: a
need the inventory covers is *have* even if you would rather build something nicer.

A **request** need carries a capability request a developer can build from: the
system, the purpose, who benefits, the actions (each one's reads, writes and side
effect), how it signs in **as a kind** — a person's own OAuth, a tenant secret
reference, none — and what data it touches. Never a key, never a token.

## What a design holds

```
role              the job as a title
hiresFor          the problem in the person's words
outcomes          three to seven results
interview         the questions asked and the answers given, verbatim
needs             each need, what satisfies it (kind + key + label), its route, the reason
instructions      the SKILL.md body: how the employee works (below)
recommendedTier   lookup | quick_answer | real_work, with the reason
modelCandidates   at most two pinned model ids to measure; never a "-latest" alias
evaluationCases   three to twelve cases (below)
```

## Writing the instructions

The instructions are a `SKILL.md` body in this corpus's own shape: a one-paragraph
role, a pipeline table of stages, "How to run this skill", and "Inputs this skill
needs". Write them for the employee that will run them, in the second person. Every
*never* from the interview is a sentence here. Name tools by their inventory key, and
only tools whose route is *have* or *grant*; a *propose* workflow is named by the key
you are proposing; a *request* need is referred to as "once <system> is connected".

## Writing the cases

A case is what "good" looked like in the interview, made testable:

- **context** — the situation every run is given (the business, the data, the day);
- **request** — the exact words the person would say;
- **objective** — one line: what a good answer achieves;
- **expectedOutcome** — what a good answer contains, in prose;
- **checks** — literals, never patterns: *contains* "follow-up", *not_contains*
  "Dear Sir/Madam", *heading_present* "Quiet leads", *min_chars* 400. Each has a key
  and a severity (`fail` or `warn`);
- **judgeCriteria** — what only a reader can judge: "each draft names something from
  the lead's record". Mark one `critical` only where failing it would make the output
  unusable, not merely weak.

Three cases is the floor. The strong set has one ordinary day, one empty day (nothing
to do — a good employee says so), and one edge the person named.

## Recommending a tier, and two models to measure

- **lookup** — the employee reads and reports; no drafting.
- **quick_answer** — short drafts, one-step reasoning.
- **real_work** — multi-step work, long drafts, delegation.

Say why in one sentence. The tier is a claim until the cases are run; name at most two
pinned model ids as candidates so the measurement (on the desk, by a person) can say
which the cases support. Never write a `-latest` alias: a measurement of an alias
measures whatever the alias pointed at that day.

## Read it back

Before anything leaves, show the whole design as a document — role, outcomes, the
needs table with routes and reasons, the instructions, the cases, the tier — and ask
whether it is right. Change it until it is. Where you can create an artifact, do;
revise it rather than creating a second one.

## Handoff

To Module 5 with the design the person approved in conversation, and the readiness
check passed: at least three outcomes, at least three cases, instructions, a request
spec on every *request* need, and a named thing on every *have* need. If it is not
ready, say exactly what is missing and fix it here.

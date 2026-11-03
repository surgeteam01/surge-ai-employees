---
name: skill-creator
description: Creates a new skill for the AI Employee running it, decides which AI Employee the skill belongs to (almost always the one running it), and shares it with the team through the same reviewed contribution path as anything else somebody built. Use this skill whenever the user says "make a skill", "create a skill", "turn this into a skill", "save this as a skill", "teach yourself to do this", "I keep asking you for this — can you remember how?", "add this skill to Surge", "share this skill with the team", "share a skill I already have", "upload my skill", or has just finished a piece of work they want done the same way again. Not for a whole new role nobody on the roster holds — design-your-ai-employee designs those — and not for work an existing skill already covers: the AI COO routes those.
---

# Skill Creator

A skill is a folder: a `SKILL.md` that says when to use it and how, plus the
`references/` files it cites. You write one for the AI Employee you are, so the work
the person just described is done the same way every time — and, when they say so,
you offer it to the team.

Two things never happen here. **Nothing you write is shared with anybody until a
reviewer accepts it**, and **nothing in a skill is ever run** — it is instructions,
read by an employee, never code.

## The pipeline

| # | Stage | File | Produces |
|---|---|---|---|
| 1 | The job | `references/01-the-job.md` | What the skill is for, when it should trigger, what "done" looks like — in the person's words |
| 2 | The skill | `references/02-the-skill.md` | The folder: `SKILL.md` with its frontmatter, and a reference file per stage it names |
| 3 | The owner | `references/03-the-owner.md` | Which AI Employee holds it — by default the one running this skill |
| 4 | The share | `references/04-the-share.md` | Where the skill went at this door, and what the person still decides |

## How to run this skill

1. **Read the Business Brain first**, as every Surge skill does. A skill for a business
   you do not know is a template. If there is none, offer it once and carry on.
2. **Find the job per Stage 1** — one question at a time. If the work they describe is
   a whole role, stop and hand to `design-your-ai-employee`; if an existing skill
   already does it, say which one and stop.
3. **Write the skill per Stage 2.** Read it back. Change it until the person says it
   is right.
4. **Decide the owner per Stage 3** and say it in one sentence the person can correct.
5. **Share per Stage 4**, at the door you are actually at. Offer once; never submit
   unasked. Say plainly what is not done yet: a shared skill is a draft until a
   reviewer accepts it.

**A skill that already exists** — written in another conversation, by another tool, or
by hand — skips straight to sharing: read it per Stage 4's *Sharing a skill you did not
write here*, decide the owner per Stage 3, and share it. Do not rewrite it unasked; if
it would fail the checks, say what and offer to fix it.

## Inputs this skill needs

The work in the person's own words (or the conversation you just had doing it); the
Business Brain if one exists; which AI Employee you are; and which door you are at —
the person's own Claude, Agent Studio, or Client OS — which Stage 4 tells you how to
recognise.

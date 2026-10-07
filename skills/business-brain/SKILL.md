---
name: business-brain
description: Interviews a founder about their business once and writes the answers into a BUSINESS-BRAIN.md file — identity, voice, brand, offers, how they want to be helped, current goals and boundaries — that every other Surge skill reads at the start of its own onboarding, so nobody explains their business twice. Use this skill whenever the user says "set up my business brain", "tell you about my business", "you keep asking me the same questions", "what do you know about my business", asks how to stop re-briefing every session, or is starting with these skills for the first time and has no BUSINESS-BRAIN.md yet. Also use it to update an existing brain when the business has changed — new goals, a new offer, a new price. It produces no marketing or business deliverable itself; it produces the context every other deliverable is made from.
---

# Business Brain

The one interview you do once. Every other skill in this pack opens by asking
about your business — who you serve, what you sell, how you sound, what you
will not do. Answered separately, that is the same twenty minutes spent again
per skill, and answered thinly because you want to get to the deliverable. This
skill does the interview properly, one question at a time, and writes the
answers into a file the other skills read first.

The file is `BUSINESS-BRAIN.md`. It is yours: plain markdown, readable, editable
by hand. Its shape matches the hosted Business Brain in Surge's Client OS
exactly, so if you move up to that tier the file is imported in one step and
you are never asked these questions again.

## The pipeline

| # | Stage | File | Produces |
|---|---|---|---|
| 1 | The questions | `references/01-the-questions.md` | The catalogue — every question, its key, and the empty file |
| 2 | How to interview | `references/02-how-to-interview.md` | The conduct: one question at a time, never invent, read back |
| 3 | Where the file lives | `references/03-where-the-file-lives.md` | Where to find and where to put `BUSINESS-BRAIN.md` on each host |
| 4 | Keeping it current | `references/04-keeping-it-current.md` | What goes stale, and how other skills add to the file |
| 5 | What each skill adds | `references/05-what-each-skill-adds.md` | Which skill reads and hands back which field — where to go to fill a gap |

## How to run this skill

1. **Look for an existing `BUSINESS-BRAIN.md` first**, per Stage 3. If there is one, read it, say what it already answers, and ask only what is marked `_unanswered_` or what the user says has changed. Never restart an interview a file already holds.
2. **Read Stage 1 for the questions and Stage 2 for the conduct**, then interview: one question at a time, the parts in order, required questions first within a part. Accept "skip".
3. **Read the whole thing back** in your own words before writing, and fix what the user corrects.
4. **Write the file** in the exact shape Stage 1 shows — one heading per field carrying its key in backticks — and put it where Stage 3 says for this host. Say where you put it.
5. **Tell the user what to do next**: the skill they came for will now read the file and skip its own opening questions.

## Inputs this skill needs (collected in Stage 1)

Nothing in advance. The founder answers out loud; the skill records. Where a
public website exists, it may be read to propose answers, but every proposed
answer is confirmed by the founder before it is written — a brain is worth
having because the founder said it.

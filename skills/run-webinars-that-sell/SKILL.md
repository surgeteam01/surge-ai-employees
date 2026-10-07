---
name: run-webinars-that-sell
description: Builds a complete webinar funnel from scratch — offer clarification, customer research, webinar architecture, registration page and headline, reminder/show-up sequence, the live webinar content script itself (teaching + pitch), proof, objections, offer stack, the pitch and close script, post-webinar follow-up (attendees and no-shows), full assembly, and show-up/conversion-scored optimization. Use this skill whenever the user asks to plan, script, or improve a webinar, a live training that pitches an offer, a masterclass, or any "watch this then buy" format — even if they only ask for one piece of it (e.g. "write me a webinar registration page" or "help me script the pitch at the end") — those are entry points into this same pipeline. Also use it when the user wants to sell through teaching rather than a static page or cold sequence.
---

# Run Webinars That Sell

A 14-stage pipeline that takes a raw offer through to a finished, show-up-rate- and conversion-scored webinar funnel — the registration page, the reminder sequence that gets people to actually show up, the live webinar script itself (content and pitch), and the post-webinar follow-up for both attendees and no-shows. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; a pitch script written without the content-teaching stage behind it has no earned authority to sell from, the same way a rushed CTA under-converts a sales page built without the stages behind it. If the user only wants one piece (e.g. just the registration page or just the pitch script), still run the lightweight stages that feed it (onboarding + offer clarifier + customer research) so that one piece is actually grounded, rather than written in a vacuum.

A webinar is structurally a spoken sales page wrapped in a funnel: it needs everything a sales page needs (offer clarity, proof, objection handling, an offer stack, a close) plus everything an email funnel needs (a registration/opt-in step, a reminder sequence, and post-event follow-up for both attendees and no-shows). This skill accordingly reuses more modules than any other skill in this repo — five modules come directly from `sales-page-that-converts` and `build-your-email-funnel` (Customer Research Engine, Proof & Testimonial Engine, Objection Handler, Offer Stack Builder — reused directly; several others adapted), and the genuinely new work is concentrated in the live content/pitch script itself, which has no equivalent in a written page or email.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Webinar Brief (persistent context for every other stage) |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened one-line offer + transformation statement |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer profile, awareness stage |
| 4 | Webinar Architect | `references/04-webinar-architect.md` | Full funnel map — registration, reminder cadence, webinar structure, follow-up sequences |
| 5 | Registration Page & Headline Lab | `references/05-registration-page-and-headline-lab.md` | Webinar title, headline, registration page copy |
| 6 | Reminder & Show-Up Sequence Writer | `references/06-reminder-and-show-up-sequence-writer.md` | The pre-webinar reminder sequence, built to maximize live attendance |
| 7 | Webinar Content & Script Architect | `references/07-webinar-content-and-script-architect.md` | The full spoken content outline — open, teaching, transition to pitch |
| 8 | Proof & Testimonial Engine | `references/08-proof-and-testimonial-engine.md` | Persuasive proof blocks, matched to content and pitch moments |
| 9 | Objection Handler | `references/09-objection-handler.md` | Objection rebuttals for the pitch and live Q&A |
| 10 | Offer Stack Builder | `references/10-offer-stack-builder.md` | Value-anchored offer stack revealed during the pitch |
| 11 | Pitch & Close Script Writer | `references/11-pitch-and-close-script-writer.md` | The full spoken pitch — stack reveal, guarantee, price, urgency, close |
| 12 | Post-Webinar Follow-Up Sequence Writer | `references/12-post-webinar-follow-up-sequence-writer.md` | Follow-up sequences for attendees-who-didn't-buy and no-shows |
| 13 | Full Webinar Funnel Assembler | `references/13-full-webinar-funnel-assembler.md` | The complete assembled funnel — registration page, reminders, script, follow-up |
| 14 | Webinar Optimizer | `references/14-webinar-optimizer.md` | Show-up rate, content-to-pitch, and close-strength scoring, plus A/B variants |

## How to run this skill

1. **Check for an existing Webinar Brief first.** If the user has already given you an offer, audience, and webinar format in this conversation (or a prior one), don't re-ask — read `01-onboarding.md`, extract what's needed, confirm the gaps only.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front).
3. **Surface each stage's output to the user before moving on** if this is the first time running the pipeline for this offer, so they can correct course early rather than at the end — a webinar script is expensive to redo once recorded or delivered live.
4. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving a gap in the funnel.
5. **Always end with Stage 14.** A webinar funnel that hasn't been scored for show-up potential and pitch strength, and hasn't had at least one A/B variant proposed, isn't finished.
6. **The content-to-pitch transition (the end of Stage 7, feeding into Stage 11) is the single highest-leverage moment in the whole funnel.** A webinar that teaches well but transitions to the pitch abruptly loses the sale regardless of how good the offer is — treat this transition with the same care a sales page gives its lead-to-offer transition.

## Inputs this skill needs (collected in Stage 1)

Business/offer name, the core promise of the pitched offer, price and payment structure, target audience, webinar topic and format (live, evergreen/automated, or hybrid), platform in use (Zoom, WebinarJam, YouTube Live, etc.), scheduled date(s) if live, existing registration page or deck if any, existing proof, brand voice, and any hard constraints (compliance, claims that can't be made, must-include elements).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if `BUSINESS-BRAIN.md` exists, Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`), *Topics you do not cover* (`topics_not_covered`), *Credentials and proof* (`credentials_proof`), *Tone* (`tone`), *Personality traits* (`personality_traits`), *Phrases you use* (`phrases_to_use`), *Phrases to avoid* (`phrases_to_avoid`), *Preferred length* (`content_length`), *Emoji use* (`emoji_use`), *Formatting style* (`formatting_style`) from it and asks only for the rest. It establishes no standing fact about the business, so it hands nothing back unless the founder said something new along the way.
<!-- surge:brain-crosswalk:end -->

---
name: build-your-email-funnel
description: Builds a complete, automated email funnel from scratch — offer clarification, customer research, sequence architecture, subject lines, welcome/indoctrination sequence, nurture sequence, proof, objection handling, sales sequence, cart-close/urgency sequence, CTAs, full funnel assembly, and conversion + deliverability scoring. Use this skill whenever the user asks to write, build, improve, or review an email funnel, email sequence, welcome sequence, nurture emails, sales/pitch emails, abandoned-cart emails, or any automated email campaign — even if they only ask for one piece of it (e.g. "write me a welcome email" or "help with my subject lines") — those are entry points into this same pipeline. Also use it when the user wants to turn a lead magnet or email list into revenue, or nurture subscribers toward a purchase or booked call.
---

# Build Your Email Funnel

A 14-stage pipeline that takes a raw offer and an email list (or a plan to build one) through to a finished, conversion-scored, deliverability-checked email funnel — welcome sequence, nurture sequence, sales sequence, and cart-close sequence, fully mapped with triggers and send timing. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; a sales sequence built without the objection-handling and proof stages behind it under-converts the same way a rushed pricing section would on a sales page. If the user only wants one piece (e.g. just a welcome email or a subject line), still run the lightweight stages that feed it (onboarding + offer clarifier + customer research) so that one piece is actually grounded, rather than writing it in a vacuum.

This skill shares seven modules directly with `sales-page-that-converts` (Onboarding, Offer Clarifier, Customer Research Engine, Proof & Testimonial Engine, Objection Handler, CTA & Close Writer — adapted for email rather than rebuilt) and introduces new modules for what's unique to email: sequence architecture, subject lines, and the four sequence types themselves.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Funnel Brief (persistent context for every other stage) |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened one-line offer + transformation statement |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer profile (pains, desires, objections, phrases, awareness stage) |
| 4 | Funnel Architect | `references/04-funnel-architect.md` | Full sequence-by-sequence funnel map (which sequences, how many emails, triggers, timing) |
| 5 | Subject Line Lab | `references/05-subject-line-lab.md` | Subject lines + preview text for every email — scored options |
| 6 | Welcome Sequence Writer | `references/06-welcome-sequence-writer.md` | Welcome/indoctrination sequence (delivery, story, expectation-setting) |
| 7 | Nurture Sequence Writer | `references/07-nurture-sequence-writer.md` | Value-first nurture sequence that plants the offer |
| 8 | Proof & Testimonial Engine | `references/08-proof-and-testimonial-engine.md` | Persuasive proof blocks, matched to specific emails |
| 9 | Objection Handler | `references/09-objection-handler.md` | Objection rebuttals, some woven into emails, some as a dedicated objection email |
| 10 | Sales Sequence Writer | `references/10-sales-sequence-writer.md` | Full pitch sequence — cart open, proof, guarantee, objections, pricing |
| 11 | Cart-Close / Urgency Sequence Writer | `references/11-cart-close-urgency-writer.md` | Final-push sequence with honest urgency/scarcity |
| 12 | CTA & Close Writer | `references/12-cta-and-close-writer.md` | Calls to action for every email + sequence closing copy |
| 13 | Full Funnel Assembler | `references/13-full-funnel-assembler.md` | The complete assembled funnel, every email in send order with triggers |
| 14 | Funnel Optimizer | `references/14-funnel-optimizer.md` | Conversion + deliverability score, edits, A/B variants |

## How to run this skill

1. **Check for an existing Funnel Brief first.** If the user has already given you an offer, audience, list details, and proof in this conversation (or a prior one), don't re-ask — read `01-onboarding.md`, extract what's needed, confirm the gaps only.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front).
3. **Surface each stage's output to the user before moving on** if this is the first time running the pipeline for this offer, so they can correct course early rather than at the end. Once a user is a repeat user of this skill for the same offer, you can move faster and batch stages.
4. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving a gap in the funnel.
5. **Always end with Stage 14.** A funnel that hasn't been scored for conversion and deliverability, and hasn't had at least one A/B variant proposed, isn't finished.
6. **Not every funnel needs all four sequences.** Stage 4 (Funnel Architect) decides, from awareness stage and funnel goal, whether the welcome, nurture, sales, and cart-close sequences are all warranted or whether some should be shortened/merged — a most-aware, ready-to-buy list doesn't need a long indoctrination sequence, for instance.

## Inputs this skill needs (collected in Stage 1)

Business/offer name, the core promise, price and payment structure, target audience, email platform/ESP in use, current list size and source (lead magnet, past customers, cold list), existing sequences (if any), existing proof (testimonials, results, case studies — or "none yet"), brand voice, funnel goal (direct sale, booked call, webinar registration, free trial), and any hard constraints (compliance, unsubscribe/CAN-SPAM requirements, claims that can't be made, must-include elements).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`), *Topics you do not cover* (`topics_not_covered`), *Credentials and proof* (`credentials_proof`), *Tone* (`tone`), *Personality traits* (`personality_traits`), *Phrases you use* (`phrases_to_use`), *Phrases to avoid* (`phrases_to_avoid`), *Preferred length* (`content_length`), *Emoji use* (`emoji_use`), *Formatting style* (`formatting_style`), *Content rules* (`content_rules`) from it and asks only for the rest. It establishes no standing fact about the business, so it hands nothing back unless the founder said something new along the way.
<!-- surge:brain-crosswalk:end -->

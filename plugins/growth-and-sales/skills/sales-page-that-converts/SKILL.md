---
name: sales-page-that-converts
description: Builds a complete, high-converting sales page from scratch — offer clarification, customer research, page architecture, headlines, proof, objections, guarantee, pricing, CTAs, full assembly, and conversion scoring. Use this skill whenever the user asks to write, build, improve, or review a sales page, landing page copy, offer page, or long-form/short-form direct-response page, even if they only ask for one piece of it (e.g. "write me a headline" or "help with my pricing section") — those are entry points into this same pipeline. Also use it when the user wants to launch an offer, sell a product/service online, or turn an idea into a page that sells.
---

# Sales Page That Converts

A 14-stage pipeline that takes a raw offer idea through to a finished, conversion-scored sales page. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; a rushed pricing section built without the objection-handling stage behind it under-converts. If the user only wants one piece (e.g. just a headline), still run the lightweight stages that feed it (onboarding + offer clarifier + customer research) so that one piece is actually grounded, rather than writing it in a vacuum.

**The pipeline writes the copy; `references/00-page-blueprint.md` decides the page.** That blueprint is the default structure for every long-form page this skill produces — a 17-block order, modelled on the Amy Porterfield launch page, in which the price/CTA block appears **four times** and the FAQ is an ordered persuasion sequence rather than a support list. Read it before Module 4 and again before Module 13. Deviating from it is allowed, but only as a stated decision with a reason (its own **Deviation rules** section), never as drift.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 0 | **Page Blueprint** | `references/00-page-blueprint.md` | The default block order, the CTA block, the FAQ order, and the deviation + honesty rules |
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Offer Brief (persistent context for every other stage) |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened one-line offer + transformation statement |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer profile (pains, desires, objections, phrases, awareness stage) |
| 4 | Sales Page Architect | `references/04-sales-page-architect.md` | Full section-by-section page outline |
| 5 | Headline Lab | `references/05-headline-lab.md` | Hero headline, pre-headline, subhead — scored options |
| 6 | Lead Writer | `references/06-lead-writer.md` | Opening hook paragraphs |
| 7 | Offer Stack Builder | `references/07-offer-stack-builder.md` | Value-anchored offer stack with bonuses |
| 8 | Proof & Testimonial Engine | `references/08-proof-and-testimonial-engine.md` | Persuasive proof blocks |
| 9 | Objection Handler | `references/09-objection-handler.md` | Objection rebuttals + FAQ |
| 10 | Guarantee Writer | `references/10-guarantee-writer.md` | Risk-reversal / guarantee copy |
| 11 | Pricing Section Designer | `references/11-pricing-section-designer.md` | Pricing section with anchoring and tiers |
| 12 | CTA & Close Writer | `references/12-cta-and-close-writer.md` | Calls to action + closing copy |
| 13 | Full Page Assembler | `references/13-full-page-assembler.md` | The complete assembled draft page |
| 14 | Page Optimizer | `references/14-page-optimizer.md` | Conversion score, edits, A/B variants |

## How to run this skill

0. **Read `references/00-page-blueprint.md` once, early.** It is the target shape. Knowing it up front stops the earlier modules producing copy that has nowhere to go (e.g. one CTA line when the page needs four placements, or a value stack with no honest per-component values).
1. **Check for an existing Offer Brief first.** If the user has already given you an offer, audience, price, and proof in this conversation (or a prior one), don't re-ask — read `01-onboarding.md`, extract what's needed, confirm the gaps only.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front). Module 0 is the one exception: it is the map, so it is loaded first and stays loaded.
3. **Surface each stage's output to the user before moving on** if this is the first time running the pipeline for this offer, so they can correct course early rather than at the end. Once a user is a repeat user of this skill for the same offer, you can move faster and batch stages.
4. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving a gap in the page.
5. **Always end with Stage 14.** A page that hasn't been scored and hasn't had at least one A/B variant proposed isn't finished.

## Inputs this skill needs (collected in Stage 1)

Business/offer name, the core promise, price and payment structure, target audience, existing proof (testimonials, results, case studies — or "none yet"), brand voice, and any hard constraints (compliance, claims that can't be made, must-include elements).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`), *Topics you do not cover* (`topics_not_covered`), *Credentials and proof* (`credentials_proof`), *Tone* (`tone`), *Personality traits* (`personality_traits`), *Phrases you use* (`phrases_to_use`), *Phrases to avoid* (`phrases_to_avoid`), *Preferred length* (`content_length`), *Emoji use* (`emoji_use`), *Formatting style* (`formatting_style`) from it and asks only for the rest. It establishes no standing fact about the business, so it hands nothing back unless the founder said something new along the way.
<!-- surge:brain-crosswalk:end -->

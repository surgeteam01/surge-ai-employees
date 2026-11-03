---
name: launch-a-digital-product
description: Builds a complete digital product launch from scratch — offer clarification, customer research, launch architecture (timeline, live vs evergreen), pre-launch anticipation content, the sales page itself (via handoff to sales-page-that-converts), the cart-open launch sequence, cart-close urgency, fast-action bonuses, an affiliate/partner enablement kit, post-purchase delivery and onboarding, an evergreen transition plan, full launch assembly, and launch-scored optimization. Use this skill whenever the user asks to plan or run a product launch, course launch, software/app launch, template or digital-download launch, or any "cart open, cart close" style release — even if they only ask for one piece of it (e.g. "write me my pre-launch emails" or "help me plan my launch week") — those are entry points into this same pipeline. Also use it when the user wants to turn an already-built digital product into revenue through a coordinated release rather than a static, always-on page.
---

# Launch a Digital Product

A 14-stage pipeline that takes a raw digital product and offer through to a finished, launch-scored release plan — the full timeline, pre-launch anticipation content, the sales page itself, the cart-open sequence, cart-close urgency, fast-action bonuses, an affiliate kit, and the post-purchase delivery/onboarding that actually keeps refunds low. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; a cart-open sequence written without the pre-launch anticipation stage behind it sells into a cold, unprepared list, the same way a rushed CTA under-converts a sales page built without the stages behind it. If the user only wants one piece (e.g. just the pre-launch content or just the cart-close emails), still run the lightweight stages that feed it (onboarding + offer clarifier + customer research + launch architect) so that one piece is actually grounded, rather than written in a vacuum.

This skill is unusual among the Surge skills in that it doesn't rebuild sales page copywriting logic at all — Stage 6 explicitly hands off to `sales-page-that-converts`'s own pipeline (its Architect through Optimizer stages) for the actual sales page, passing forward the offer clarity and customer research already done here so those foundational stages aren't repeated. This skill's own 14 modules focus entirely on what's unique to a *launch*: the timeline, the anticipation-building content, the cart mechanics, and what happens after the sale.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Launch Brief (persistent context for every other stage) |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened one-line offer + transformation statement |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer profile, awareness stage |
| 4 | Launch Architect | `references/04-launch-architect.md` | Full launch timeline and model (live vs evergreen), mapping every piece to its module |
| 5 | Pre-Launch Content Sequence Writer | `references/05-pre-launch-content-sequence-writer.md` | The anticipation-building content run before cart open |
| 6 | Sales Page Handoff | `references/06-sales-page-handoff.md` | The actual sales page, produced by handing off to `sales-page-that-converts` |
| 7 | Launch/Cart-Open Sequence Writer | `references/07-launch-cart-open-sequence-writer.md` | The email sequence driving traffic to the sales page once the cart opens |
| 8 | Cart-Close / Urgency Sequence Writer | `references/08-cart-close-urgency-sequence-writer.md` | The final-push sequence as the real cart-close deadline approaches |
| 9 | Bonus & Fast-Action Incentive Designer | `references/09-bonus-and-fast-action-incentive-designer.md` | Fast-action bonuses that reward buying early in the launch window |
| 10 | Affiliate & Partner Enablement Kit | `references/10-affiliate-and-partner-enablement-kit.md` | Swipe copy and assets for anyone promoting the launch on the business's behalf |
| 11 | Post-Launch Delivery & Onboarding Sequence | `references/11-post-launch-delivery-and-onboarding-sequence.md` | The buyer's first-touch experience after purchase, built to reduce refunds and drive completion |
| 12 | Evergreen Transition Planner | `references/12-evergreen-transition-planner.md` | A plan for converting the live launch into an always-on automated funnel afterward, if applicable |
| 13 | Full Launch Assembler | `references/13-full-launch-assembler.md` | The complete launch calendar and every asset, assembled in sequence |
| 14 | Launch Optimizer | `references/14-launch-optimizer.md` | Anticipation strength, urgency honesty, and delivery-risk scoring, plus A/B variants |

## How to run this skill

1. **Check for an existing Launch Brief first.** If the user has already given you an offer, product, and launch date/model in this conversation (or a prior one), don't re-ask — read `01-onboarding.md`, extract what's needed, confirm the gaps only.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front).
3. **When you reach Stage 6, actually invoke `sales-page-that-converts`'s pipeline** for the sales page itself rather than improvising sales page copy from scratch — pass it the sharpened offer (Stage 2) and VoC profile (Stage 3) so it doesn't re-ask onboarding questions already answered here.
4. **Surface each stage's output to the user before moving on** if this is the first time running the pipeline for this launch, so they can correct course early — a launch has a hard real-world date attached, and rework after the timeline is public is far more costly than rework on a private page.
5. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving a gap in the launch calendar.
6. **Always end with Stage 14.** A launch plan that hasn't been checked for honest urgency and post-purchase delivery risk isn't finished — a great cart-open sequence followed by a confusing delivery experience still produces refunds and damages the next launch's trust.
7. **Not every launch needs every module.** Stage 4 (Launch Architect) decides whether affiliates (Stage 10) or an evergreen transition (Stage 12) are actually in scope — don't force either onto a solo-promoted, one-time launch.

## Inputs this skill needs (collected in Stage 1)

Business/product name, product type (course, template, software, ebook, community, etc.), the core promise, price and payment structure, target audience, launch model (live launch with a hard cart-open/close window, evergreen/always-on, or hybrid), current list size, delivery/sales platform, launch date(s) if live, whether affiliates/partners will promote it, existing proof, brand voice, and any hard constraints (compliance, claims that can't be made, must-include elements).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`), *Topics you do not cover* (`topics_not_covered`), *Credentials and proof* (`credentials_proof`), *Tone* (`tone`), *Personality traits* (`personality_traits`), *Phrases you use* (`phrases_to_use`), *Phrases to avoid* (`phrases_to_avoid`), *Preferred length* (`content_length`), *Emoji use* (`emoji_use`), *Formatting style* (`formatting_style`), *Platforms* (`content_platforms`), *Current goals* (`current_goals`) from it and asks only for the rest. On finishing, it hands back *Current goals* (`current_goals`) into the brain.
<!-- surge:brain-crosswalk:end -->

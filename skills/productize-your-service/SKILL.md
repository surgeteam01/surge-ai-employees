---
name: productize-your-service
description: Turns a bespoke, custom-quoted service into a fixed-scope, fixed-price productized offer — offer clarification, customer research, scope definition and offer stacking, pricing model/tier/price-point design, a repeatable delivery SOP, proof, objections, guarantee, package presentation copy, full assembly, and margin/conversion-scored optimization. Use this skill whenever the user asks to productize their service, turn consulting/freelance/agency work into packages, stop quoting every project from scratch, create fixed-price service tiers, or build a repeatable delivery system for client work — even if they only ask for one piece of it (e.g. "help me design my service packages" or "what should my tiers include?") — those are entry points into this same pipeline. Also use it when the user is exhausted from re-scoping and re-quoting every new client from zero and wants a repeatable, sellable package instead.
---

# Productize Your Service

A 14-stage pipeline that takes a currently bespoke, custom-quoted service through to a finished, margin-checked, conversion-scored productized offer — fixed scope, fixed price tiers, a repeatable delivery system, and the presentation copy that sells it. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; a price picked without the scope-definition stage behind it just re-creates the custom-quoting problem this skill exists to solve. If the user only wants one piece (e.g. just "what should my tiers include?"), still run the lightweight stages that feed it (onboarding + offer clarifier + customer research + scope definition) so that piece is actually grounded, rather than picked in a vacuum.

This skill has the highest module-reuse ratio of any skill in this repo — eight of its fourteen modules are reused directly from `sales-page-that-converts` and `nail-your-pricing` (Offer Clarifier, Customer Research Engine, Pricing Model & Strategy Selector, Value Metric & Tier Designer, Price Point Calculator, Proof & Testimonial Engine, Objection Handler, Guarantee Writer). The genuinely new work is concentrated in what makes a service *productized* rather than just priced: defining a fixed scope boundary, and building the internal delivery system that makes that scope repeatable without re-inventing the process for every client.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Service Brief (persistent context for every other stage) |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened one-line offer + transformation statement |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer profile, including common customization requests |
| 4 | Scope Definition & Offer Stack Builder | `references/04-scope-definition-and-offer-stack-builder.md` | Fixed scope boundaries (in/out) and the value-anchored package stack |
| 5 | Pricing Model & Strategy Selector | `references/05-pricing-model-and-strategy-selector.md` | The chosen pricing model and market positioning strategy |
| 6 | Value Metric & Tier Designer | `references/06-value-metric-and-tier-designer.md` | The package tier structure (good/better/best) |
| 7 | Price Point Calculator | `references/07-price-point-calculator.md` | The actual price(s) per tier, margin-checked |
| 8 | Delivery SOP & Systemization Designer | `references/08-delivery-sop-and-systemization-designer.md` | The repeatable internal process that delivers the fixed scope consistently |
| 9 | Proof & Testimonial Engine | `references/09-proof-and-testimonial-engine.md` | Persuasive proof blocks, matched to specific packages |
| 10 | Objection Handler | `references/10-objection-handler.md` | Rebuttals for productization-specific objections ("what if I don't fit the box?") |
| 11 | Guarantee Writer | `references/11-guarantee-writer.md` | Risk-reversal / guarantee copy |
| 12 | Package Presentation & CTA Writer | `references/12-package-presentation-and-cta-writer.md` | The copy that presents the packages and drives the booking/purchase |
| 13 | Full Package Assembler | `references/13-full-package-assembler.md` | The complete package page/sheet plus the internal delivery SOP document |
| 14 | Package Optimizer | `references/14-package-optimizer.md` | Margin, conversion, and scope-creep-risk scoring, plus A/B variants |

## How to run this skill

1. **Check for an existing Service Brief first.** If the user has already described their current service, pricing, and delivery process in this conversation (or a prior one), don't re-ask — read `01-onboarding.md`, extract what's needed, confirm the gaps only.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front).
3. **Surface each stage's output to the user before moving on** if this is the first time running the pipeline, so they can correct course early — scope definition (Stage 4) in particular is where users often want to negotiate "but what about edge case X," and that negotiation is easier before pricing and delivery systems are built on top of a specific scope.
4. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving a gap.
5. **Always end with Stage 14.** A package that hasn't been checked for scope-creep risk isn't finished — the single most common way a productized service quietly reverts to bespoke custom work is scope creep that nobody explicitly flagged and priced for.
6. **Treat Stage 4's scope boundary as a hard constraint for every later stage.** Module 8's delivery SOP must be buildable within that exact scope, not a wishful version of it — if the SOP reveals the scope doesn't hold up in practice, come back to Stage 4 rather than letting delivery quietly expand past what was priced.

## Inputs this skill needs (collected in Stage 1)

Business/service name, what the service currently does (in its bespoke/custom form), current pricing model (hourly, project-quoted, retainer) and typical range, target audience, delivery capacity (solo, small team, how many clients at once realistically), the most common client requests and the most common scope-creep patterns experienced so far, existing case studies/proof, brand voice, and any hard constraints (contractual commitments to existing clients on the old model, must-honor guarantees already promised elsewhere).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Target audience* (`target_audience`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`), *Topics you do not cover* (`topics_not_covered`) from it and asks only for the rest. On finishing, it hands back *Core offers* (`core_offers`), *Topics you do not cover* (`topics_not_covered`) into the brain.
<!-- surge:brain-crosswalk:end -->

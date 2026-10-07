---
name: nail-your-pricing
description: Builds a complete, defensible pricing strategy from scratch — offer clarification, customer/willingness-to-pay research, pricing model and strategy selection, competitor/market scanning, offer stack design, value-metric and tier design, actual price-point calculation, objection handling, guarantee design, payment structure, presentation copy, and margin/conversion-scored optimization. Use this skill whenever the user asks to price a product or service, figure out what to charge, review or fix existing pricing, design pricing tiers, decide between one-time vs subscription pricing, or write the copy that presents a price — even if they only ask for one piece of it (e.g. "what should I charge for this?" or "help me design my pricing tiers") — those are entry points into this same pipeline. Also use it when the user feels unsure, underconfident, or arbitrary about a price they've already set.
---

# Nail Your Pricing

A 14-stage pipeline that takes a raw offer through to a finished, margin-checked, conversion-scored pricing strategy — the model, the actual numbers, the tiers, the guarantee, the payment structure, and the copy that presents it all. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; a price picked without the value-metric and competitor-scan stages behind it is usually just a guess dressed up as a number, the same way a rushed CTA under-converts a sales page built without the stages behind it. If the user only wants one piece (e.g. just "what should I charge?"), still run the lightweight stages that feed it (onboarding + offer clarifier + customer research + competitor scan) so that number is actually grounded, rather than picked in a vacuum.

This skill reuses six modules directly from `sales-page-that-converts` (Offer Clarifier, Customer Research Engine, Offer Stack Builder, Objection Handler, Guarantee Writer, Pricing Section Designer — adapted rather than rebuilt) and introduces new modules for the pricing-strategy work a sales page assumes has already happened: choosing a pricing model, scanning the competitive landscape, designing the value metric and tiers, and calculating the actual price point.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Pricing Brief (persistent context for every other stage) |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened one-line offer + transformation statement |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer profile, including price-sensitivity and willingness-to-pay signals |
| 4 | Pricing Model & Strategy Selector | `references/04-pricing-model-and-strategy-selector.md` | The chosen pricing model and market positioning strategy |
| 5 | Competitor & Market Pricing Scan | `references/05-competitor-and-market-pricing-scan.md` | Comparable market prices and positioning gaps |
| 6 | Offer Stack Builder | `references/06-offer-stack-builder.md` | Value-anchored offer stack with bonuses |
| 7 | Value Metric & Tier Designer | `references/07-value-metric-and-tier-designer.md` | The value metric and tier structure (if tiered) |
| 8 | Price Point Calculator | `references/08-price-point-calculator.md` | The actual price number(s), margin-checked |
| 9 | Objection Handler | `references/09-objection-handler.md` | Price-specific objection rebuttals |
| 10 | Guarantee Writer | `references/10-guarantee-writer.md` | Risk-reversal / guarantee copy |
| 11 | Payment Structure Designer | `references/11-payment-structure-designer.md` | Billing cadence, installment, and discount structure |
| 12 | Pricing Presentation Writer | `references/12-pricing-presentation-writer.md` | The anchoring, framing, and CTA copy that presents the price |
| 13 | Full Pricing Package Assembler | `references/13-full-pricing-package-assembler.md` | The complete pricing page/sheet plus a sales-conversation script |
| 14 | Pricing Optimizer | `references/14-pricing-optimizer.md` | Margin, conversion, and fairness-perception score, plus A/B variants |

## How to run this skill

1. **Check for an existing Pricing Brief first.** If the user has already given you an offer, costs, audience, and competitor context in this conversation (or a prior one), don't re-ask — read `01-onboarding.md`, extract what's needed, confirm the gaps only.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front).
3. **Surface each stage's output to the user before moving on** if this is the first time running the pipeline for this offer, so they can correct course early rather than at the end — pricing decisions are especially costly to unwind after a price has been publicly quoted or launched.
4. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving a gap in the final package.
5. **Always end with Stage 14.** A price that hasn't been checked against margin, conversion likelihood, and fairness perception isn't finished — an untested price is still a guess, just a more elaborately justified one.
6. **Never let this pipeline output a price below the business's real cost floor.** Stage 8 (Price Point Calculator) must confirm a margin floor from Stage 1 before finalizing any number — a psychologically appealing price that loses money on every sale is not a win.

## Inputs this skill needs (collected in Stage 1)

Business/offer name, the core promise, current price (if any) and how it was set, known costs and minimum acceptable margin, target audience, competitors and their known pricing (or "unknown — need to research"), currency/market, desired positioning (premium, mid-market, value/penetration — or "not sure, help me decide"), existing proof, brand voice, and any hard constraints (contractual pricing commitments already made, discounting policies, must-honor guarantees already promised elsewhere).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if `BUSINESS-BRAIN.md` exists, Stage 1 reads *Business name* (`business_name`), *Target audience* (`target_audience`), *Core offers* (`core_offers`), *Unique value proposition* (`unique_value_proposition`), *Credentials and proof* (`credentials_proof`), *Deal-breakers* (`deal_breakers`) from it and asks only for the rest. On finishing, it hands back *Core offers* (`core_offers`) for the founder to fold into the file.
<!-- surge:brain-crosswalk:end -->

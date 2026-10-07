---
name: write-better-ads
description: Builds a complete paid ad campaign from scratch — offer clarification, customer research, competitor ad landscape scanning, ad angle/hook architecture, headlines, opening lines, platform-specific format adaptation (Meta, Google, TikTok, LinkedIn), visual/creative direction, proof, objection handling, CTAs, full campaign assembly, and hook-strength/platform-fit-scored optimization with built-in A/B variants. Use this skill whenever the user asks to write ad copy, plan an ad campaign, create Facebook/Instagram/Google/TikTok/LinkedIn ads, or figure out why their ads aren't converting — even if they only ask for one piece of it (e.g. "write me a Facebook ad" or "give me some ad angles") — those are entry points into this same pipeline.
---

# Write Better Ads

A 14-stage pipeline that takes a raw offer through to a finished, hook- and platform-fit-scored ad campaign — a competitor scan, multiple distinct creative angles, platform-native ad copy, visual/creative direction, and A/B-ready variants. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; an ad written without the angle-architecture stage behind it is usually just a generic pitch in ad clothing, the same way a rushed CTA under-converts a sales page built without the stages behind it. If the user only wants one piece (e.g. just a headline or just an ad angle), still run the lightweight stages that feed it (onboarding + offer clarifier + customer research) so that piece is actually grounded, rather than written in a vacuum.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Ads Brief |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened offer + transformation statement |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer profile driving ad angles |
| 4 | Competitor Ad Landscape Scan | `references/04-competitor-ad-landscape-scan.md` | What competitors are already running, and where the gap is |
| 5 | Ad Angle & Hook Architect | `references/05-ad-angle-and-hook-architect.md` | Multiple genuinely distinct creative angles |
| 6 | Headline Lab | `references/06-headline-lab.md` | Ad headlines/primary text, scored options |
| 7 | Lead Writer | `references/07-lead-writer.md` | Opening lines that stop the scroll |
| 8 | Platform-Specific Ad Format Adapter | `references/08-platform-specific-ad-format-adapter.md` | Copy adapted to each platform's real constraints and conventions |
| 9 | Visual/Creative Direction Writer | `references/09-visual-and-creative-direction-writer.md` | Image/video creative direction paired with the copy |
| 10 | Proof & Testimonial Engine | `references/10-proof-and-testimonial-engine.md` | Proof-based ad creative (results, UGC-style testimonials) |
| 11 | Objection Handler | `references/11-objection-handler.md` | Rebuttals woven into ad copy and ready for comment-section pushback |
| 12 | CTA & Close Writer | `references/12-cta-and-close-writer.md` | Ad CTA button copy and closing lines |
| 13 | Full Ad Campaign Assembler | `references/13-full-ad-campaign-assembler.md` | The complete assembled campaign, angle by angle, platform by platform |
| 14 | Ad Optimizer | `references/14-ad-optimizer.md` | Hook strength, platform-fit, and creative-variety scoring, plus ready A/B variants |

## How to run this skill

1. **Check for an existing `find-your-niche` profile or `write-like-a-human` voice profile** before re-asking anything.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage.
3. **Never produce just one ad.** Module 5 exists specifically because a single angle, no matter how good, is a hypothesis — real ad performance comes from testing several genuinely different angles against each other, not variations on one idea.
4. **Always end with Module 14**, which should produce ready-to-run A/B variants, not just a score — testing is the actual point of ad creative, more so than any other content type in this repo.

## Inputs this skill needs (collected in Stage 1)

Business/offer name, the core promise, price, target audience (or a link to an existing `find-your-niche` profile), ad platforms in use (Meta, Google, TikTok, LinkedIn, a combination), budget range, campaign goal (awareness, leads, direct sales), existing ads or past performance data if any, brand voice (or a link to an existing `write-like-a-human` profile), and any hard constraints (platform ad policy restrictions, claims that can't be made).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if `BUSINESS-BRAIN.md` exists, Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`), *Topics you do not cover* (`topics_not_covered`), *Credentials and proof* (`credentials_proof`), *Tone* (`tone`), *Personality traits* (`personality_traits`), *Phrases you use* (`phrases_to_use`), *Phrases to avoid* (`phrases_to_avoid`), *Preferred length* (`content_length`), *Emoji use* (`emoji_use`), *Formatting style* (`formatting_style`), *Imagery style* (`brand_imagery_style`) from it and asks only for the rest. It establishes no standing fact about the business, so it hands nothing back unless the founder said something new along the way.
<!-- surge:brain-crosswalk:end -->

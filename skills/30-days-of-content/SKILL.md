---
name: 30-days-of-content
description: Builds a complete 30-day content calendar from scratch — offer clarification, customer research, content pillar/theme design, calendar and cadence planning, headline/hook writing, opening-line writing, distinct content ideas for every day, platform-native format adaptation, proof-based content, CTAs, a repurposing/batching system, full calendar assembly, and variety/engagement-scored optimization. Use this skill whenever the user asks for a month of content, a content calendar, post ideas, help with what to post consistently, or a repeatable content system across social platforms or a blog — even if they only ask for one piece of it (e.g. "give me 10 post ideas" or "help me write hooks for my posts") — those are entry points into this same pipeline. Also use it when the user feels like they're posting randomly with no strategy and running out of ideas.
---

# 30 Days of Content

A 14-stage pipeline that takes a raw offer and audience through to a finished, variety-and-engagement-scored 30-day content calendar — content pillars, a day-by-day calendar, platform-native post ideas, hooks, and a repurposing system that turns one piece of core content into many without multiplying the workload. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; 30 individual post ideas generated without the pillar/theme stage behind them usually turn into a random grab-bag that doesn't build toward anything, the same way a rushed CTA under-converts a sales page built without the stages behind it. If the user only wants one piece (e.g. just a handful of post ideas), still run the lightweight stages that feed it (onboarding + offer clarifier + customer research + pillar architecture) so those ideas are actually strategically grounded, rather than generated in a vacuum.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Content Brief (persistent context for every other stage) |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened one-line offer + transformation statement |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer profile driving content topics |
| 4 | Content Pillar & Theme Architect | `references/04-content-pillar-and-theme-architect.md` | 3-5 recurring content pillars and a content-mix ratio |
| 5 | Content Calendar & Cadence Planner | `references/05-content-calendar-and-cadence-planner.md` | The 30-day skeleton — which pillar/format lands on which day, per platform |
| 6 | Headline Lab | `references/06-headline-lab.md` | Post titles/hooks, scored options |
| 7 | Lead Writer | `references/07-lead-writer.md` | Opening lines that earn the rest of the post being read |
| 8 | Content Idea Generator | `references/08-content-idea-generator.md` | 30 distinct, non-repetitive content ideas mapped to the calendar |
| 9 | Format & Platform Adapter | `references/09-format-and-platform-adapter.md` | Each idea adapted to its native format per platform |
| 10 | Proof & Testimonial Engine | `references/10-proof-and-testimonial-engine.md` | Proof-based content (case studies, results) woven into the calendar |
| 11 | CTA & Close Writer | `references/11-cta-and-close-writer.md` | Engagement and conversion CTAs per post |
| 12 | Repurposing & Batching System Designer | `references/12-repurposing-and-batching-system-designer.md` | A system for turning one core piece into several without extra ideation |
| 13 | Full Content Calendar Assembler | `references/13-full-content-calendar-assembler.md` | The complete assembled 30-day calendar |
| 14 | Content Optimizer | `references/14-content-optimizer.md` | Variety, hook-strength, and platform-fit scoring, plus A/B variants |

## How to run this skill

1. **Check for an existing Content Brief first**, and check whether a `find-your-niche` positioning statement or a `write-like-a-human` voice profile already exists for this business — pull both in directly rather than re-deriving audience or voice from scratch.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front).
3. **Surface the pillar structure (Stage 4) and calendar skeleton (Stage 5) to the user before generating all 30 ideas** — these two stages set the whole month's direction, and are much easier to redirect before 30 individual pieces of content exist than after.
4. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving gaps in the calendar.
5. **Always end with Stage 14.** A calendar that hasn't been checked for variety (same pillar/format repeating too often) and hook strength isn't finished.
6. **Design for repurposing from the start, not as an afterthought.** Stage 12 works best when the calendar (Stage 5) was already planned with batching in mind — flag this if Stage 5 didn't account for it.

## Inputs this skill needs (collected in Stage 1)

Business/offer name, the core promise, target audience (or a link to an existing `find-your-niche` profile), platforms in use, existing content pillars or topics of interest, current posting frequency and history, top-performing past content if any, brand voice (or a link to an existing `write-like-a-human` profile), the goal for this content (engagement, lead generation, authority-building, direct sales), and any hard constraints (compliance, claims that can't be made, topics to avoid).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if `BUSINESS-BRAIN.md` exists, Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`), *Topics you do not cover* (`topics_not_covered`), *Credentials and proof* (`credentials_proof`), *Tone* (`tone`), *Personality traits* (`personality_traits`), *Phrases you use* (`phrases_to_use`), *Phrases to avoid* (`phrases_to_avoid`), *Preferred length* (`content_length`), *Emoji use* (`emoji_use`), *Formatting style* (`formatting_style`), *Content types* (`content_types`), *Platforms* (`content_platforms`), *Content rules* (`content_rules`), *Current goals* (`current_goals`) from it and asks only for the rest. On finishing, it hands back *Content types* (`content_types`), *Platforms* (`content_platforms`), *Content rules* (`content_rules`) for the founder to fold into the file.
<!-- surge:brain-crosswalk:end -->

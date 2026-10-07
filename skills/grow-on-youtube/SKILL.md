---
name: grow-on-youtube
description: Builds a complete YouTube growth system — offer clarification, customer research, content pillar/series design, upload calendar planning, title/thumbnail packaging (the click-through-rate mechanic unique to YouTube), video script architecture (hook, retention structure, payoff), video ideas, YouTube SEO/discoverability, retention and engagement mechanics, subscribe/CTA copy, full assembly, and CTR/retention-scored optimization. Use this skill whenever the user asks to grow a YouTube channel, plan video content, write a video script, design thumbnails and titles, or figure out why their videos aren't getting views or watch time — even if they only ask for one piece of it (e.g. "help me write a script hook" or "why isn't my thumbnail working?") — those are entry points into this same pipeline.
---

# Grow on YouTube

A 14-stage pipeline that takes a raw channel concept through to a finished, CTR- and retention-scored YouTube content system — content pillars, an upload calendar, title/thumbnail packaging, full video scripts built for watch-time retention, SEO, and engagement mechanics. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; a script written without the packaging (title/thumbnail) stage behind it can be excellent and still get zero views, since YouTube's entire discovery mechanic runs on the click decision before a single second of the video is watched. If the user only wants one piece (e.g. just a script hook), still run the lightweight stages that feed it (onboarding + offer clarifier + customer research + pillar architecture) so that piece is actually grounded, rather than written in a vacuum.

This skill reuses the content-pillar, calendar, and idea-generation logic from `30-days-of-content` directly rather than re-deriving it, and adds what's genuinely unique to YouTube: the title/thumbnail packaging mechanic that drives click-through, and the script structure that drives watch-time retention once someone clicks. Both are the two metrics YouTube's algorithm weighs most heavily, and neither has an equivalent anywhere else in this repo.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Channel Brief (persistent context for every other stage) |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened one-line channel value proposition + transformation |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer profile driving video topics |
| 4 | Content Pillar & Calendar Planner | `references/04-content-pillar-and-calendar-planner.md` | Recurring content pillars/series and an upload calendar |
| 5 | Video Idea Generator | `references/05-video-idea-generator.md` | Specific, non-repetitive video ideas mapped to the calendar |
| 6 | Title & Thumbnail Packaging Lab | `references/06-title-and-thumbnail-packaging-lab.md` | Title/thumbnail pairs scored for click-through potential |
| 7 | Video Script Architect | `references/07-video-script-architect.md` | The full script structure — hook, retention pacing, payoff |
| 8 | Hook Writer | `references/08-hook-writer.md` | The first 15-30 seconds, written to prevent early drop-off |
| 9 | YouTube SEO & Discoverability Optimizer | `references/09-youtube-seo-and-discoverability-optimizer.md` | Tags, description, search-intent targeting, end screens/cards |
| 10 | Retention & Engagement Mechanics Designer | `references/10-retention-and-engagement-mechanics-designer.md` | Pattern interrupts, open loops, mid-video and end-screen strategy |
| 11 | Subscribe & CTA Writer | `references/11-subscribe-and-cta-writer.md` | Subscribe asks and engagement CTAs placed for minimal retention cost |
| 12 | Series & Playlist Strategist | `references/12-series-and-playlist-strategist.md` | How individual videos connect into playlists/series that drive session watch-time |
| 13 | Full Channel Content Plan Assembler | `references/13-full-channel-content-plan-assembler.md` | The complete assembled content plan — calendar, scripts, packaging, SEO |
| 14 | Channel Optimizer | `references/14-channel-optimizer.md` | CTR potential, retention design, and SEO completeness scoring, plus A/B variants |

## How to run this skill

1. **Check for an existing Channel Brief first**, and check whether a `find-your-niche` positioning statement, a `write-like-a-human` voice profile, or a `30-days-of-content` calendar already exists for this business — pull these in directly rather than re-deriving audience, voice, or pillar structure from scratch.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front).
3. **Treat Stage 6 (Title & Thumbnail Packaging) as inseparable from the script.** On YouTube, the packaging is often written and iterated on before or alongside the script, not purely after — a script's best moment sometimes IS the thumbnail's premise. Don't treat packaging as an afterthought bolted onto a finished script.
4. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving gaps.
5. **Always end with Stage 14.** A video plan that hasn't been scored for CTR potential and retention design isn't finished — great content with weak packaging or a slow opening won't get watched regardless of how good the payoff is.

## Inputs this skill needs (collected in Stage 1)

Channel name/niche, existing channel stats if any (subscriber count, average views, top-performing videos), target audience (or a link to an existing `find-your-niche` profile), video format focus (long-form, Shorts, or both), production capacity/equipment, upload cadence goal, brand voice (or a link to an existing `write-like-a-human` profile), and any hard constraints (topics to avoid, required disclosures).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if `BUSINESS-BRAIN.md` exists, Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Tone* (`tone`), *Personality traits* (`personality_traits`), *Phrases you use* (`phrases_to_use`), *Phrases to avoid* (`phrases_to_avoid`), *Preferred length* (`content_length`), *Emoji use* (`emoji_use`), *Formatting style* (`formatting_style`), *Areas of expertise* (`areas_of_expertise`), *Platforms* (`content_platforms`) from it and asks only for the rest. On finishing, it hands back *Platforms* (`content_platforms`) for the founder to fold into the file.
<!-- surge:brain-crosswalk:end -->

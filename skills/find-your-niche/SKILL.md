---
name: find-your-niche
description: Helps a business or individual find a specific, viable, differentiated niche instead of trying to serve "everyone" — a skills and experience inventory, market landscape scan, audience segmentation, customer research per candidate segment, niche viability scoring, a positioning statement, a differentiation or unique mechanism, a beachhead micro-segment, objection handling for the fear of niching down, a validation plan, and messaging and bio copy. Use this whenever the user is unsure who they serve, wants to narrow their target audience, feels they are serving "everyone" and converting nobody, is choosing between possible directions for a business, or needs a sharper positioning statement or bio — even if they only ask for one piece of it ("help me write my bio", "am I niched down enough?"); those are entry points into this same pipeline. Foundational, upstream work: the defined audience and positioning feed every other skill's onboarding brief.
---

# Find Your Niche

A 14-stage pipeline that takes a broad, unclear "who do I serve" situation through to a validated, differentiated niche — a specific audience, a positioning statement, a unique angle, a starting beachhead segment, and a concrete plan to validate it before fully committing. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; a positioning statement written without the viability-scoring and differentiation stages behind it is often just a nicer-sounding version of "everyone," the same way a rushed CTA under-converts a sales page built without the stages behind it. If the user only wants one piece (e.g. just a bio), still run the lightweight stages that feed it (onboarding + skills inventory + at least one candidate segment's research) so that bio is actually grounded in a real, chosen niche rather than generic.

This skill is unusual among the Surge skills in that its output isn't a piece of sales or marketing copy — it's the audience and positioning clarity that every other skill's Onboarding stage (its "audience" field) depends on. Running this skill first, before any of the sales-page, email-funnel, or outreach skills, makes every one of them sharper and faster to run.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Niche Brief (persistent context for every other stage) |
| 2 | Skills & Experience Inventory | `references/02-skills-and-experience-inventory.md` | A real inventory of expertise, results, and credibility to build a niche from |
| 3 | Market Landscape Scan | `references/03-market-landscape-scan.md` | Existing players, adjacent niches, and gaps in the space |
| 4 | Audience Segmentation & Persona Mapper | `references/04-audience-segmentation-and-persona-mapper.md` | 3-5 distinct candidate audience segments, broken out of "everyone" |
| 5 | Customer Research Engine | `references/05-customer-research-engine.md` | Voice-of-Customer profile for each candidate segment |
| 6 | Niche Viability Scorer | `references/06-niche-viability-scorer.md` | Each candidate segment scored on market size, fit, competition, and reachability |
| 7 | Positioning Statement Writer | `references/07-positioning-statement-writer.md` | The core "I help X achieve Y through Z" positioning statement |
| 8 | Differentiation & Unique Mechanism Finder | `references/08-differentiation-and-unique-mechanism-finder.md` | What makes this angle distinct from others serving similar audiences |
| 9 | Micro-Segment / Beachhead Finder | `references/09-micro-segment-and-beachhead-finder.md` | A narrower starting segment to win first, before expanding |
| 10 | Objection Handler | `references/10-objection-handler.md` | Rebuttals to the fear of niching down itself |
| 11 | Validation Plan Designer | `references/11-validation-plan-designer.md` | Concrete, low-cost steps to test the niche before fully committing |
| 12 | Messaging & Bio Writer | `references/12-messaging-and-bio-writer.md` | Website bio, social bios, and elevator pitch built on the chosen positioning |
| 13 | Full Niche Brief Assembler | `references/13-full-niche-brief-assembler.md` | The complete niche brief — segment, positioning, differentiation, validation plan, messaging |
| 14 | Niche Optimizer | `references/14-niche-optimizer.md` | Clarity, viability, and differentiation scoring, plus an alternate niche angle to consider |

## How to run this skill

1. **Check for an existing Niche Brief first.** If the user has already described their skills, audience ideas, or market in this conversation (or a prior one), don't re-ask — read `01-onboarding.md`, extract what's needed, confirm the gaps only.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front).
3. **Surface each stage's output to the user before moving on**, especially Stage 4 (candidate segments) and Stage 6 (viability scores) — niche selection is a decision the user needs to feel ownership over, not one this skill should make unilaterally and hand back as a fait accompli.
4. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving a gap.
5. **Always end with Stage 14.** A niche that hasn't been scored for clarity and viability, and hasn't had an alternate angle considered, isn't finished — the goal is a confident, evidence-backed choice, not just the first idea that came up.
6. **Never present a niche as final without Stage 11's validation plan.** A niche chosen purely from analysis and never tested against real market response is still a hypothesis — this skill's job is to make that hypothesis as sharp and cheap-to-test as possible, not to replace testing with analysis alone.

## Inputs this skill needs (collected in Stage 1)

Current business/role (if any), industry or general area of interest, skills and experience the person actually has, any existing audience or customer base, what people have historically asked them for help with, what kind of work they find most energizing vs. draining, financial/lifestyle goals that constrain the decision (e.g. needing to reach profitability quickly vs. having runway to build slowly), and any niches already ruled out or under serious consideration.

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Areas of expertise* (`areas_of_expertise`), *Credentials and proof* (`credentials_proof`), *Current goals* (`current_goals`) from it and asks only for the rest. On finishing, it hands back *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`) into the brain.
<!-- surge:brain-crosswalk:end -->

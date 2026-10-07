---
name: course-creator
description: Builds a complete online course from curriculum through launch — offer clarification, customer/student research, curriculum and learning-path design, lesson-level content outlines, launch mechanics (via handoff to launch-a-digital-product), offer stacking, proof, objections, pricing, guarantee, a student success and completion system, full assembly, and completion/conversion-scored optimization. Use this skill whenever the user asks to build, structure, launch, or improve an online course, a cohort program, a self-paced curriculum, or any "teach this, then sell it" educational product — even if they only ask for one piece of it (e.g. "help me structure my course modules" or "how do I stop students from dropping off halfway through?") — those are entry points into this same pipeline. Also use it when the user has expertise they want to package into a paid learning product.
---

# Course Creator

A 14-stage pipeline that takes raw expertise through to a finished, completion- and conversion-scored online course — the curriculum structure, lesson-level content outlines, the full launch (via handoff to `launch-a-digital-product`), and the student success system that actually gets people to finish. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; a launch sequence built without a clear curriculum behind it sells a promise the course itself hasn't earned yet, the same way a rushed CTA under-converts a sales page built without the stages behind it. If the user only wants one piece (e.g. just curriculum structure, or just a completion strategy), still run the lightweight stages that feed it (onboarding + offer clarifier + customer research) so that piece is actually grounded, rather than designed in a vacuum.

This skill doesn't rebuild launch mechanics from scratch — Stage 6 explicitly hands off to `launch-a-digital-product`'s own pipeline (which itself hands off to `sales-page-that-converts` for the sales page), passing forward the offer clarity and customer research already done here. This skill's own new modules focus entirely on what's unique to a course: the curriculum and learning-path design, lesson-level instructional content, and the student success/completion system that determines whether people who buy the course actually finish it and get results.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Course Brief (persistent context for every other stage) |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened one-line offer + transformation statement |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer / student profile, including starting skill level |
| 4 | Curriculum & Learning Path Architect | `references/04-curriculum-and-learning-path-architect.md` | Full module/lesson structure, sequenced toward the transformation |
| 5 | Lesson Content Outline Writer | `references/05-lesson-content-outline-writer.md` | Per-lesson teaching points, exercises, and assignments |
| 6 | Launch Handoff | `references/06-launch-handoff.md` | The full launch (pre-launch content, sales page, cart sequences) via handoff to `launch-a-digital-product` |
| 7 | Offer Stack Builder | `references/07-offer-stack-builder.md` | Value-anchored offer stack, including course-specific bonuses |
| 8 | Proof & Testimonial Engine | `references/08-proof-and-testimonial-engine.md` | Student results and testimonials, matched to sales moments |
| 9 | Objection Handler | `references/09-objection-handler.md` | Rebuttals for course-specific objections ("will I actually finish this?") |
| 10 | Pricing Model, Tier & Price Designer | `references/10-pricing-model-tier-and-price-designer.md` | The pricing model, any tiers (self-study vs. with-coaching), and the actual price |
| 11 | Guarantee Writer | `references/11-guarantee-writer.md` | Risk-reversal / guarantee copy |
| 12 | Student Success & Completion System Designer | `references/12-student-success-and-completion-system-designer.md` | The drip schedule, accountability, and community system that drives completion |
| 13 | Full Course Assembler | `references/13-full-course-assembler.md` | The complete assembled course — curriculum, launch package, and success system |
| 14 | Course Optimizer | `references/14-course-optimizer.md` | Completion-risk, conversion, and margin scoring, plus A/B variants |

## How to run this skill

1. **Check for an existing Course Brief first.** If the user has already given you a topic, transformation, and audience in this conversation (or a prior one), don't re-ask — read `01-onboarding.md`, extract what's needed, confirm the gaps only.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front).
3. **When you reach Stage 6, actually invoke `launch-a-digital-product`'s pipeline** for the launch mechanics rather than improvising pre-launch content or cart sequences from scratch — pass it the sharpened offer (Stage 2), VoC profile (Stage 3), and curriculum highlights (Stage 4) so it doesn't re-ask what's already been answered here.
4. **Surface each stage's output to the user before moving on** if this is the first time running the pipeline, so they can correct course early — curriculum structure in particular is expensive to redo once lessons have actually been recorded or written.
5. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving a gap.
6. **Always end with Stage 14.** A course that hasn't been checked for completion risk isn't finished — a course that sells well but has a low completion rate produces weak testimonials, high refund requests, and a damaged reputation for the next launch.
7. **Treat completion, not just enrollment, as the real success metric throughout.** Stage 12 is not an afterthought bolted onto a finished curriculum — it should shape decisions made as early as Stage 4 (e.g. module length, pacing) rather than being retrofitted at the end.

## Inputs this skill needs (collected in Stage 1)

Business/course name, the course topic and target transformation, price and payment structure, target audience and their realistic starting skill level, format (self-paced, cohort-based with a start/end date, or hybrid), delivery platform (Teachable, Kajabi, Circle, a custom site, etc.), rough timeline for content creation, existing curriculum drafts or past course performance (completion rate, refund rate, or "none yet"), existing proof, brand voice, and any hard constraints (compliance, claims that can't be made, must-include elements).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if `BUSINESS-BRAIN.md` exists, Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`), *Topics you do not cover* (`topics_not_covered`), *Credentials and proof* (`credentials_proof`), *Tone* (`tone`), *Personality traits* (`personality_traits`), *Phrases you use* (`phrases_to_use`), *Phrases to avoid* (`phrases_to_avoid`), *Preferred length* (`content_length`), *Emoji use* (`emoji_use`), *Formatting style* (`formatting_style`) from it and asks only for the rest. On finishing, it hands back *Core offers* (`core_offers`) for the founder to fold into the file.
<!-- surge:brain-crosswalk:end -->

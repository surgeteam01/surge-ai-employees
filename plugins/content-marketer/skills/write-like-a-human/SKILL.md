---
name: write-like-a-human
description: Captures a person or brand's authentic writing voice and turns it into a reusable profile — writing sample analysis, a voice attribute map, a signature phrase bank, an AI-tell detector that strips generic or robotic patterns, a style guide, channel-by-channel calibration, before/after rewrites, a drift detector, and a rewrite engine that matches any draft to the captured voice. Use this whenever the user wants their writing (or AI-generated writing) to sound more like them and less generic, wants one consistent voice across everything they publish, notices their content "sounds like AI wrote it", or wants a portable voice profile every other piece of content can be checked against — even if they only ask for one piece of it ("make this sound more like me", "why does my writing sound so generic?"); those are entry points into this same pipeline. Foundational, upstream work: the voice profile feeds every other skill's voice field, and the rewrite engine runs standalone against any draft.
---

# Write Like a Human

A 14-stage pipeline that takes real writing samples through to a portable, reusable voice profile — the attributes, signature phrases, style rules, and a working rewrite engine that can take any generic or AI-sounding draft and make it sound like the actual person or brand wrote it. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; a rewrite done without the sample-analysis and AI-tell-detection stages behind it just swaps one generic style for another, the same way a rushed CTA under-converts a sales page built without the stages behind it. If the user only wants one piece (e.g. just "make this sound more like me" on a single draft), still run the lightweight stages that feed it (onboarding + sample analysis + AI-tell detection) so that rewrite is actually grounded in a real, captured voice rather than a guess.

Unlike most other Surge skills, this one doesn't produce sales/marketing copy directly — it produces the voice consistency layer that makes every other skill's output sound like an actual person rather than generic AI-flavored marketing copy. Once built, a voice profile from this skill should be handed to every other skill's Onboarding stage instead of re-describing "voice" from scratch each time.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Voice Brief (persistent context for every other stage) |
| 2 | Writing Sample Collector & Analyzer | `references/02-writing-sample-collector-and-analyzer.md` | Raw pattern analysis of real writing samples |
| 3 | Voice Attribute Mapper | `references/03-voice-attribute-mapper.md` | A structured voice profile across key spectrum dimensions |
| 4 | Signature Phrase & Rhetorical Device Bank | `references/04-signature-phrase-and-rhetorical-device-bank.md` | Catalogued recurring phrases, analogies, and sentence patterns |
| 5 | AI-Tell Detector & De-Genericizer | `references/05-ai-tell-detector-and-de-genericizer.md` | A list of generic/AI-sounding patterns to actively avoid |
| 6 | Do's and Don'ts Style Guide Writer | `references/06-dos-and-donts-style-guide-writer.md` | A concrete, actionable style guide |
| 7 | Channel & Context Calibration | `references/07-channel-and-context-calibration.md` | How the core voice flexes across channels without losing identity |
| 8 | Before/After Rewrite Sample Bank | `references/08-before-after-rewrite-sample-bank.md` | Concrete generic-to-voice-matched rewrite pairs |
| 9 | Voice Drift Detector & Self-Audit Checklist | `references/09-voice-drift-detector-and-self-audit-checklist.md` | A checklist for catching drift away from the voice over time |
| 10 | Rewrite & Voice-Matching Engine | `references/10-rewrite-and-voice-matching-engine.md` | The working process for rewriting any draft into the captured voice |
| 11 | Cross-Skill Handoff Guide | `references/11-cross-skill-handoff-guide.md` | Instructions for feeding this profile into every other Surge skill's Onboarding stage |
| 12 | Voice Profile Quick-Reference Card | `references/12-voice-profile-quick-reference-card.md` | A condensed, fast-loading summary of the full profile |
| 13 | Full Voice Profile Assembler | `references/13-full-voice-profile-assembler.md` | The complete assembled voice profile document |
| 14 | Voice Profile Optimizer | `references/14-voice-profile-optimizer.md` | Distinctiveness, consistency, and usability scoring, plus a test rewrite |

## How to run this skill

1. **Check for an existing Voice Brief first.** If the user has already shared writing samples or described their voice in this conversation (or a prior one), don't re-ask — read `01-onboarding.md`, extract what's needed, confirm the gaps only.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front).
3. **Insist on real writing samples wherever possible.** This skill's entire value depends on Module 2 having genuine material to analyze — a voice profile built purely from the user's self-description of their style ("I'm direct and friendly") is far weaker than one built from actual sentences they've written, since people are often inaccurate narrators of their own writing patterns.
4. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving a gap.
5. **Always end with Stage 14**, which includes running the rewrite engine (Module 10) against a real test passage — a voice profile that hasn't been proven to actually work on a rewrite isn't finished, it's still a hypothesis about the voice.
6. **Once this profile exists, use it.** Every other Surge skill's Onboarding stage should receive this profile (via Module 11's handoff guide) instead of asking the user to re-describe their voice from a blank slate each time.

## Inputs this skill needs (collected in Stage 1)

Business/person name, real writing samples (emails, social posts, past marketing copy, journal entries — anything genuinely written by them, the more and more varied the better), a self-description of their communication style (useful as a cross-check, not a substitute for real samples), examples of writing they admire or want to sound more like (for calibrating direction, not for copying), specific writing that has felt "off" or inauthentic when they've tried to produce it (often a clearer signal than positive examples), the channels/contexts where this voice needs to show up (email, social, sales pages, formal proposals), and any hard constraints (industry compliance language that must stay formal even if the rest of the voice is casual).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Target audience* (`target_audience`), *Tone* (`tone`), *Phrases you use* (`phrases_to_use`), *Phrases to avoid* (`phrases_to_avoid`) from it and asks only for the rest. On finishing, it hands back *Tone* (`tone`), *Personality traits* (`personality_traits`), *Phrases you use* (`phrases_to_use`), *Phrases to avoid* (`phrases_to_avoid`), *Preferred length* (`content_length`), *Emoji use* (`emoji_use`), *Formatting style* (`formatting_style`) into the brain.
<!-- surge:brain-crosswalk:end -->

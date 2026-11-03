---
name: build-your-own-brand-identity
description: Builds a complete visual brand identity from scratch — brand personality mapping, naming/tagline, competitor visual landscape scanning, color palette, typography system, logo concept and creative brief, visual mood/imagery style, brand-voice alignment, application/touchpoint planning, full brand guidelines assembly, and distinctiveness/consistency-scored optimization. Use this skill whenever the user asks to design a logo, choose brand colors, build brand guidelines, name a business, or create a cohesive visual identity — even if they only ask for one piece of it (e.g. "help me pick brand colors" or "I need a tagline") — those are entry points into this same pipeline. This produces creative direction, briefs, and specifications a designer or AI image tool can execute — not final rendered logo artwork.
---

# Build Your Own Brand Identity

A 14-stage pipeline that takes a raw business concept through to a finished, distinctiveness- and consistency-scored visual brand identity — personality, naming, color, typography, a logo creative brief, imagery style, and a full guidelines document showing how it all applies across real touchpoints. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. This skill produces creative direction and specifications precise enough for a designer or an AI image tool to execute against, not final logo artwork itself — the pipeline's job is making every downstream creative decision (a logo brief, a color choice, a photo style) traceable back to a deliberate strategic choice rather than an aesthetic guess.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Brand Identity Brief |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened value proposition the identity needs to visually express |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer profile driving visual/emotional resonance |
| 4 | Brand Personality & Positioning Mapper | `references/04-brand-personality-and-positioning-mapper.md` | A structured personality profile (archetype, tone, spectrum placements) |
| 5 | Naming & Tagline Generator | `references/05-naming-and-tagline-generator.md` | A business name (if needed) and tagline options |
| 6 | Competitor & Visual Landscape Scan | `references/06-competitor-and-visual-landscape-scan.md` | What competitors' brands look like and where the visual gap is |
| 7 | Color Palette Designer | `references/07-color-palette-designer.md` | A primary/secondary/accent color system with rationale |
| 8 | Typography System Designer | `references/08-typography-system-designer.md` | A font pairing and hierarchy system |
| 9 | Logo Concept & Creative Brief Writer | `references/09-logo-concept-and-creative-brief-writer.md` | A logo direction and a brief precise enough to execute |
| 10 | Visual Mood & Imagery Style Guide | `references/10-visual-mood-and-imagery-style-guide.md` | Photography/illustration/iconography style direction |
| 11 | Brand Voice Alignment | `references/11-brand-voice-alignment.md` | Confirmation the visual identity matches the verbal identity |
| 12 | Application & Touchpoint Planner | `references/12-application-and-touchpoint-planner.md` | How the identity applies across real first-use touchpoints |
| 13 | Full Brand Identity Guidelines Assembler | `references/13-full-brand-identity-guidelines-assembler.md` | The complete assembled brand guidelines document |
| 14 | Brand Identity Optimizer | `references/14-brand-identity-optimizer.md` | Distinctiveness, consistency, and executability scoring, plus variants |

## How to run this skill

1. **Check for an existing `find-your-niche` profile or `write-like-a-human` voice profile first** — pull audience and voice in directly rather than re-deriving them.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage.
3. **Treat every visual decision as downstream of Module 4's personality map**, not an independent aesthetic choice — a color palette or font pairing chosen without reference to the personality profile is decoration, not identity.
4. **Stage 13 requires every prior stage's output.** If any stage was skipped, produce a minimal version rather than leaving a gap.
5. **Always end with Stage 14.**

## Inputs this skill needs (collected in Stage 1)

Business name (or "needs a name"), industry, target audience (or a link to an existing `find-your-niche` profile), existing brand assets if any, known competitors, brand personality adjectives if the user has any in mind, budget/timeline for actual design execution (DIY with AI tools vs. hiring a designer), and any hard constraints (an existing trademark conflict to avoid, a parent-brand system to stay consistent with).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Tone* (`tone`), *Personality traits* (`personality_traits`), *Brand colours* (`brand_colors`), *Typefaces* (`brand_fonts`), *Logo rules* (`brand_logo_rules`), *Imagery style* (`brand_imagery_style`), *Design don'ts* (`brand_design_donts`) from it and asks only for the rest. On finishing, it hands back *Brand colours* (`brand_colors`), *Typefaces* (`brand_fonts`), *Logo rules* (`brand_logo_rules`), *Imagery style* (`brand_imagery_style`), *Design don'ts* (`brand_design_donts`) into the brain.
<!-- surge:brain-crosswalk:end -->

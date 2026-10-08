---
name: create-ai-product-photos
description: Builds a complete AI-generated product photography system — offer clarification, customer research, shot-list planning, visual style/brand consistency, feature-to-visual translation, AI prompt engineering, background/composition design, cross-catalog consistency systems, platform-specific formatting requirements, post-processing guidance, conversion-testing design, full assembly, and consistency/compliance-scored optimization. Use this skill whenever the user wants to create product photos using AI image tools, needs a shot list for a product launch, wants prompts for Midjourney/DALL-E/similar tools, or needs their product images to look consistent across a catalog — even if they only ask for one piece of it (e.g. "write me a prompt for a hero shot" or "what photos do I need for my Amazon listing?") — those are entry points into this same pipeline. This produces prompts, shot lists, and specifications to run through an AI image tool — not rendered images themselves.
---

# Create AI Product Photos

A 14-stage pipeline that takes a raw product through to a finished, consistency- and compliance-scored AI product photography plan — a shot list, engineered prompts per shot, a visual style guide, platform formatting requirements, and a post-processing checklist. Each stage is a focused reference module in `references/`. Run them in order. This skill's deliverable is text: prompts and specifications precise enough to run through Midjourney, DALL-E, or a similar tool and get consistent, usable results — it does not generate images directly.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Product Photo Brief |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened value proposition the photos need to visually sell |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | What visual style resonates with the buyer |
| 4 | Shot List & Photo Type Planner | `references/04-shot-list-and-photo-type-planner.md` | Every shot type needed, mapped to platform requirements |
| 5 | Visual Style & Brand Consistency Guide | `references/05-visual-style-and-brand-consistency-guide.md` | A style reference (linked to brand identity if it exists) every shot must match |
| 6 | Feature-to-Visual Translator | `references/06-feature-to-visual-translator.md` | Specific visual elements that dramatize each key selling feature |
| 7 | AI Prompt Engineering Lab | `references/07-ai-prompt-engineering-lab.md` | Scored, ready-to-use prompts per shot |
| 8 | Background & Composition Designer | `references/08-background-and-composition-designer.md` | Background treatment and composition rules per shot |
| 9 | Consistency & Batch Generation System | `references/09-consistency-and-batch-generation-system.md` | A system for keeping a whole catalog visually consistent |
| 10 | Platform-Specific Formatting Requirements | `references/10-platform-specific-formatting-requirements.md` | Exact image specs per platform (Amazon, Shopify, Instagram, etc.) |
| 11 | Post-Processing & Touch-Up Guide | `references/11-post-processing-and-touch-up-guide.md` | What to fix after AI generation before publishing |
| 12 | Conversion Testing Designer | `references/12-conversion-testing-designer.md` | A plan for testing which images actually convert |
| 13 | Full Product Photo Production Plan Assembler | `references/13-full-product-photo-production-plan-assembler.md` | The complete assembled production plan |
| 14 | Product Photo Optimizer | `references/14-product-photo-optimizer.md` | Consistency, platform-compliance, and conversion-likelihood scoring, plus variants |

## How to run this skill

1. **Check for an existing `build-your-own-brand-identity` guidelines document** and pull its color palette/imagery style directly into Module 5 rather than defining a style from scratch.
2. **Work through stages 1–14 in order.**
3. **Never skip Module 10** — a beautifully generated image that doesn't meet a platform's actual technical requirements (dimensions, background rules, file format) simply gets rejected or downranked; compliance is not optional polish.
4. **Always end with Module 14.**

## Inputs this skill needs (collected in Stage 1)

Product type and category, target platforms (Amazon, Shopify, Instagram, a combination), existing product photos if any, an existing `build-your-own-brand-identity` guidelines document if one exists, AI image tool(s) available (Midjourney, DALL-E, Adobe Firefly, etc.), and any hard constraints (platform content policies, claims that can't be visually implied).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Core offers* (`core_offers`), *Brand colours* (`brand_colors`), *Imagery style* (`brand_imagery_style`), *Design don'ts* (`brand_design_donts`) from it and asks only for the rest. On finishing, it hands back *Imagery style* (`brand_imagery_style`) into the brain.
<!-- surge:brain-crosswalk:end -->

---
name: rank-on-google
description: Builds a complete SEO content and ranking strategy — offer clarification, search-intent research, keyword research and opportunity scoring, competitor SERP analysis, on-page SEO architecture (titles, meta descriptions, headers, URLs), search-intent-matched content structure, internal linking, E-E-A-T/authority signal building, backlink strategy, SERP feature targeting, full assembly, and rankability-scored optimization. Use this skill whenever the user asks to rank higher on Google, do keyword research, optimize a page for SEO, plan SEO content, or figure out why their content isn't ranking — even if they only ask for one piece of it (e.g. "help me pick keywords" or "optimize this page's meta description") — those are entry points into this same pipeline.
---

# Rank on Google

A 14-stage pipeline that takes a raw topic/business through to a finished, rankability-scored SEO strategy — keyword targets, competitor gap analysis, on-page architecture, search-intent-matched content structure, internal linking, authority signals, a backlink strategy, and SERP feature targeting. Each stage is a focused reference module in `references/`. Run them in order. Do not skip stages even for "quick" requests; a page optimized on titles/meta alone without matching actual content structure to search intent routinely fails to rank regardless of how well-tagged it is, since Google's own ranking signals weight content-intent match heavily.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The SEO Brief |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened business goal behind the ranking effort |
| 3 | Search Intent Research | `references/03-search-intent-research.md` | Search intent classification and Voice-of-Searcher profile |
| 4 | Keyword Research & Opportunity Finder | `references/04-keyword-research-and-opportunity-finder.md` | Target keywords, clustered by intent, scored for opportunity |
| 5 | Content Gap & Competitor SERP Analysis | `references/05-content-gap-and-competitor-serp-analysis.md` | What's currently ranking and where the gaps are |
| 6 | On-Page SEO Architect | `references/06-on-page-seo-architect.md` | Title tag, meta description, header structure, URL slug per target page |
| 7 | Title & Meta Description Lab | `references/07-title-and-meta-description-lab.md` | Search-optimized, click-worthy titles and descriptions |
| 8 | Content Structure & Search-Intent Matcher | `references/08-content-structure-and-search-intent-matcher.md` | Page structure matched to what the specific search intent expects |
| 9 | Internal Linking & Site Architecture Designer | `references/09-internal-linking-and-site-architecture-designer.md` | How pages link together to distribute authority |
| 10 | E-E-A-T & Authority Signal Builder | `references/10-eeat-and-authority-signal-builder.md` | Experience/expertise/authority/trust signals to build into the page |
| 11 | Backlink & Off-Page Authority Strategy | `references/11-backlink-and-off-page-authority-strategy.md` | Realistic link-building tactics |
| 12 | SERP Feature Targeting | `references/12-serp-feature-targeting.md` | Structuring content to win featured snippets and other rich results |
| 13 | Full SEO Content Plan Assembler | `references/13-full-seo-content-plan-assembler.md` | The complete assembled SEO plan |
| 14 | SEO Optimizer | `references/14-seo-optimizer.md` | Rankability, intent-match, and completeness scoring, plus A/B variants |

## How to run this skill

1. **Check for an existing SEO Brief or `find-your-niche` profile** before re-asking anything.
2. **Work through stages 1–14 in order.**
3. **Never let Module 6/7's on-page tagging substitute for Module 8's structural work.** Title tags and meta descriptions affect click-through from the SERP; they do very little for actual ranking if the content underneath doesn't structurally match what searchers and Google both expect for that intent.
4. **Always end with Module 14.**

## Inputs this skill needs (collected in Stage 1)

Business/site name and domain, current rankings/organic traffic if any, target topics or pages, CMS/platform, known competitors, existing content inventory, and any hard constraints (compliance, claims that can't be made).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if `BUSINESS-BRAIN.md` exists, Stage 1 reads *Business name* (`business_name`), *Website* (`website`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`) from it and asks only for the rest. It establishes no standing fact about the business, so it hands nothing back unless the founder said something new along the way.
<!-- surge:brain-crosswalk:end -->

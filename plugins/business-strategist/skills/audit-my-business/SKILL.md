---
name: audit-my-business
description: Runs a structured audit across a whole business — offer and business model, market position, marketing presence, sales funnel, pricing and profitability, operations, financial health, team and capacity, retention, and risk — then produces a prioritized opportunity matrix mapping each finding to the specific skill or fix that addresses it, a full audit report, and a scored check on the audit's own rigor. Use this whenever the user asks for a business audit or health check, wants to know what is broken or what to fix first, feels stuck or overwhelmed about where to focus, or asks a broad "how is my business doing" question — even if they only ask for one piece of it ("audit my pricing", "review my sales funnel"); those are entry points into this same pipeline. Unlike business-analyst, which analyzes specific data to answer a specific question, this is a broad qualitative diagnostic whose output is a ranked action plan — often the right first skill to run before choosing any other.
---

# Audit My Business

A 14-stage pipeline that takes a whole business through to a rigorous, prioritized audit report — a scoped brief, a diagnostic pass across every major area of the business, a ranked opportunity matrix mapping each finding to the specific skill or fix that addresses it, and a scored check on the audit's own objectivity. Each stage is a focused reference module in `references/`. Run them in order. Do not skip stages even for "just look at my pricing" requests; a narrow audit that never checks whether the underlying offer or positioning is sound routinely produces confident-sounding pricing advice that fixes a symptom while missing the actual cause.

This is a different kind of pipeline from both the marketing/content skills and `business-analyst` in this repo. It doesn't produce persuasive copy, and unlike `business-analyst` it isn't answering one specific, data-backed question — it's a broad qualitative diagnostic across the whole business, closer to what a consultant delivers in a first audit engagement, and its real deliverable is a ranked list of what to fix and which skill fixes it, not a single analysis.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Audit Brief |
| 2 | Offer & Business Model Audit | `references/02-offer-and-business-model-audit.md` | An offer inventory and business-model soundness assessment |
| 3 | Market Position & Differentiation Audit | `references/03-market-position-and-differentiation-audit.md` | A positioning/differentiation gap assessment |
| 4 | Marketing & Content Presence Audit | `references/04-marketing-and-content-presence-audit.md` | A channel inventory and consistency assessment |
| 5 | Sales & Conversion Funnel Audit | `references/05-sales-and-conversion-funnel-audit.md` | A funnel map and weakest-stage finding |
| 6 | Pricing & Profitability Audit | `references/06-pricing-and-profitability-audit.md` | A pricing/margin assessment |
| 7 | Operations & Systems Audit | `references/07-operations-and-systems-audit.md` | A systemization assessment and bottleneck finding |
| 8 | Financial Health Snapshot | `references/08-financial-health-snapshot.md` | A directional financial risk snapshot |
| 9 | Team & Capacity Audit | `references/09-team-and-capacity-audit.md` | A capacity/bottleneck assessment |
| 10 | Customer Experience & Retention Audit | `references/10-customer-experience-and-retention-audit.md` | A retention and post-sale experience assessment |
| 11 | Risk & Vulnerability Scan | `references/11-risk-and-vulnerability-scan.md` | A ranked inventory of single points of failure |
| 12 | Prioritized Opportunity Matrix & Skill-Fix Mapper | `references/12-prioritized-opportunity-matrix-and-skill-fix-mapper.md` | Every finding ranked by impact/effort and mapped to a fix |
| 13 | Full Audit Report Assembler | `references/13-full-audit-report-assembler.md` | The complete assembled audit report |
| 14 | Audit Optimizer | `references/14-audit-optimizer.md` | Rigor/objectivity/actionability scoring, plus honest confidence caveats |

## How to run this skill

1. **Never skip Module 1's scoping.** Know what's prompting the audit and what data/access actually exists before diagnosing anything — an audit run without a stated scope tends to either overreach into areas with no real evidence or under-cover the area the user actually cares about.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage. If the user only wants one area audited (e.g. "just look at my pricing"), still run Module 1 and skim Module 2 (offer/model) first — pricing findings without offer context are frequently wrong.
3. **Treat Module 12 as the actual point of this skill**, not optional wrap-up — a pile of findings with no ranking or mapped next step is diagnosis without a plan, and diagnosis without a plan is what makes audits feel like busywork.
4. **Always end with Module 14**, and never overstate confidence — flag anywhere Module 1's data/access limits mean a finding is a hypothesis, not a certainty, directly in the final report.
5. **When a finding maps to another Surge skill**, name it and hand off directly if the user wants to act on it immediately, rather than re-diagnosing what this skill already found.

## Inputs this skill needs (collected in Stage 1)

Business type/model, revenue stage, what's prompting this audit now, areas already suspected to be weak, available data/access (analytics, financials, existing docs) versus what will be self-reported qualitatively, and any area explicitly out of scope.

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`), *Topics you do not cover* (`topics_not_covered`), *Credentials and proof* (`credentials_proof`), *Current goals* (`current_goals`), *Current challenges* (`current_challenges`), *Deal-breakers* (`deal_breakers`), *Strategic topics* (`strategic_topics`), *Challenge me on* (`challenge_me_on`) from it and asks only for the rest. On finishing, it hands back *Current goals* (`current_goals`), *Current challenges* (`current_challenges`) into the brain.
<!-- surge:brain-crosswalk:end -->

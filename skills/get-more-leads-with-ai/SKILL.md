---
name: get-more-leads-with-ai
description: Builds a complete AI-powered lead generation system — offer clarification, customer research, lead magnet/capture mechanism design, an AI chatbot for conversational capture, lead scoring and qualification, prospect/trigger research, automated outreach and follow-up, lead nurture automation, appointment/booking automation, a realistic AI tool stack recommendation, CTAs, full assembly, and lead-quality/automation-realism-scored optimization. Use this skill whenever the user wants to generate more leads using AI tools and automation, build a lead-capture chatbot, automate lead qualification or follow-up, or design a tech-stack-backed lead generation system — even if they only ask for one piece of it (e.g. "help me design a lead-qualifying chatbot" or "what tools should I use to automate follow-up?") — those are entry points into this same pipeline.
---

# Get More Leads With AI

A 14-stage pipeline that takes a raw offer through to a finished, lead-quality- and automation-realism-scored AI lead generation system — a capture mechanism, an AI chatbot, a scoring/qualification system, automated research, outreach, nurture, and booking, and a realistic tool stack to run it on. Each stage is a focused reference module in `references/`. Run them in order. This skill is more tooling/workflow-focused than most others in this repo — its deliverable includes real automation design and tool recommendations, not just copy.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Lead Gen Brief |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened offer + transformation |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer profile |
| 4 | Lead Magnet & Capture Mechanism Designer | `references/04-lead-magnet-and-capture-mechanism-designer.md` | The asset/mechanism that captures a lead |
| 5 | AI Chatbot / Conversational Capture Designer | `references/05-ai-chatbot-and-conversational-capture-designer.md` | A chatbot flow that qualifies and captures leads conversationally |
| 6 | Lead Scoring & Qualification System Designer | `references/06-lead-scoring-and-qualification-system-designer.md` | Fit/intent scoring criteria and an automation approach |
| 7 | Prospect & Trigger Research | `references/07-prospect-and-trigger-research.md` | Per-lead/segment personalization signals |
| 8 | Automated Outreach & Follow-Up Sequence Designer | `references/08-automated-outreach-and-follow-up-sequence-designer.md` | AI-personalized outreach and follow-up at scale |
| 9 | Lead Nurture & Re-engagement Automation | `references/09-lead-nurture-and-reengagement-automation.md` | Automated nurture for leads not yet sales-ready |
| 10 | Appointment/Booking Automation Designer | `references/10-appointment-and-booking-automation-designer.md` | Frictionless scheduling automation from lead to booked call |
| 11 | Tool & Workflow Stack Recommender | `references/11-tool-and-workflow-stack-recommender.md` | A realistic AI tool stack matched to budget/capacity |
| 12 | CTA & Close Writer | `references/12-cta-and-close-writer.md` | Lead-capture CTAs across the system |
| 13 | Full Lead Gen System Assembler | `references/13-full-lead-gen-system-assembler.md` | The complete assembled system |
| 14 | Lead Gen System Optimizer | `references/14-lead-gen-system-optimizer.md` | Lead-quality, automation-realism, and tool-fit scoring, plus A/B variants |

## How to run this skill

1. **Check for an existing Lead Gen Brief or `find-your-niche` profile** before re-asking anything.
2. **Work through stages 1–14 in order.**
3. **Treat Module 11 (tool stack) as a real constraint, not an afterthought** — an automation plan built without regard for actual budget/technical capacity produces a system the user can't realistically implement.
4. **Always end with Module 14.**

## Inputs this skill needs (collected in Stage 1)

Business/offer name, current lead sources and volume, existing tech stack (CRM, website platform, existing automations), target lead volume/goal, tool budget, and any constraints.

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`), *Topics you do not cover* (`topics_not_covered`), *Credentials and proof* (`credentials_proof`), *Client comms tone* (`client_comms_tone`), *Client comms principles* (`client_comms_principles`), *Always remind me to* (`always_remind_me_to`) from it and asks only for the rest. It establishes no standing fact about the business, so it hands nothing back unless the founder said something new along the way.
<!-- surge:brain-crosswalk:end -->

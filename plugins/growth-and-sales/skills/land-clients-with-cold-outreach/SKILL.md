---
name: land-clients-with-cold-outreach
description: Builds a complete, multi-touch cold outreach system from scratch — offer clarification, customer/ICP research, per-prospect personalization research, outreach architecture (channels, cadence, triggers), opening lines, the full message sequence, proof, objection-handling, channel-specific adaptations (email, LinkedIn DM, cold call, voicemail), meeting-booking CTAs, breakup/re-engagement messaging, full sequence assembly, and reply-rate + compliance optimization. Use this skill whenever the user asks to write, build, improve, or review cold emails, cold LinkedIn messages, a cold outreach sequence, prospecting scripts, cold call scripts, or a plan to land new clients/leads through direct outreach — even if they only ask for one piece of it (e.g. "write me a cold email" or "help with my opening line") — those are entry points into this same pipeline. Also use it when the user wants to book more sales calls or meetings from a list of prospects they haven't talked to yet.
---

# Land Clients With Cold Outreach

A 14-stage pipeline that takes a raw offer and a target prospect list through to a finished, reply-rate-scored, compliance-checked cold outreach sequence — opening lines, a full multi-touch message sequence across whichever channels are in play, and an honest breakup/re-engagement close. Each stage is a focused reference module in `references/`. Run them in order — each one's output becomes the next one's input. Do not skip stages even for "quick" requests; a cold email written without the prospect research and objection-handling stages behind it reads as generic and gets deleted, the same way a rushed pricing section under-converts a sales page. If the user only wants one piece (e.g. just an opening line or just a follow-up email), still run the lightweight stages that feed it (onboarding + offer clarifier + customer research) so that one piece is actually grounded, rather than writing it in a vacuum.

This skill reuses five modules directly from `sales-page-that-converts` and `build-your-email-funnel` (Offer Clarifier, Customer Research Engine, Proof & Testimonial Engine, Objection Handler, CTA & Close Writer — adapted for outreach rather than rebuilt) and introduces new modules for what's unique to cold outreach: per-prospect personalization research, multi-channel sequencing, and the honest breakup email that closes out a non-responsive sequence.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Outreach Brief (persistent context for every other stage) |
| 2 | Offer Clarifier | `references/02-offer-clarifier.md` | Sharpened one-line offer + transformation statement |
| 3 | Customer Research Engine | `references/03-customer-research-engine.md` | Voice-of-Customer / ICP profile (pains, desires, objections, phrases, awareness stage) |
| 4 | Prospect & Trigger Research | `references/04-prospect-and-trigger-research.md` | Per-prospect/per-segment personalization signals and trigger events |
| 5 | Outreach Architect | `references/05-outreach-architect.md` | Full sequence map — channels, touch count, cadence, triggers, branching |
| 6 | Opening Line & Hook Lab | `references/06-opening-line-and-hook-lab.md` | First-line hooks per channel — scored options |
| 7 | Message Sequence Writer | `references/07-message-sequence-writer.md` | The full multi-touch message sequence (initial touch → value-add follow-ups) |
| 8 | Proof & Testimonial Engine | `references/08-proof-and-testimonial-engine.md` | Persuasive proof blocks, matched to specific touches |
| 9 | Objection Handler | `references/09-objection-handler.md` | Objection reply playbook for real-time responses |
| 10 | Multi-Channel Adapter | `references/10-multi-channel-adapter.md` | The core sequence adapted into email, LinkedIn DM, cold call, and voicemail formats |
| 11 | CTA & Meeting-Booking Writer | `references/11-cta-and-meeting-booking-writer.md` | Low-friction calls to action across every touch |
| 12 | Breakup & Re-Engagement Writer | `references/12-breakup-and-reengagement-writer.md` | Honest final-touch breakup message + re-engagement path |
| 13 | Full Sequence Assembler | `references/13-full-sequence-assembler.md` | The complete assembled outreach sequence, every touch in send order with triggers |
| 14 | Outreach Optimizer | `references/14-outreach-optimizer.md` | Reply-rate potential score, compliance check, edits, A/B variants |

## How to run this skill

1. **Check for an existing Outreach Brief first.** If the user has already given you an offer, ICP, and channels in this conversation (or a prior one), don't re-ask — read `01-onboarding.md`, extract what's needed, confirm the gaps only.
2. **Work through stages 1–14 in order**, reading each reference file only when you get to that stage (this keeps context lean — don't load all 14 up front).
3. **Surface each stage's output to the user before moving on** if this is the first time running the pipeline for this offer, so they can correct course early rather than at the end. Once a user is a repeat user of this skill for the same offer, you can move faster and batch stages.
4. **Stage 13 (assembly) requires every prior stage's output.** If any stage was skipped, go back and produce a minimal version of it rather than leaving a gap in the sequence.
5. **Always end with Stage 14.** A sequence that hasn't been scored for reply-rate potential and compliance, and hasn't had at least one A/B variant proposed, isn't finished.
6. **Not every prospect list needs every channel.** Stage 5 (Outreach Architect) decides, from the brief's available channels and the ICP's likely reachability, whether email alone is enough or whether LinkedIn/phone should be layered in — don't force a multi-channel sequence onto a user who only has email access to their list.

## Inputs this skill needs (collected in Stage 1)

Business/offer name, the core promise, price and payment structure, ideal client profile (industry, company size, role/title, specific pain), available outreach channels (cold email, LinkedIn, phone, a combination), current list/prospect source and size, sending infrastructure and volume limits if known, existing templates or past outreach performance (reply rate, meeting-booked rate, or "none yet"), existing proof (case studies, results, client logos, or "none yet"), brand voice, and any hard constraints (compliance — CAN-SPAM, GDPR, LinkedIn's outreach limits — claims that can't be made, must-include elements).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Target audience* (`target_audience`), *Core mission* (`core_mission`), *Unique value proposition* (`unique_value_proposition`), *Core offers* (`core_offers`), *Areas of expertise* (`areas_of_expertise`), *Topics you do not cover* (`topics_not_covered`), *Credentials and proof* (`credentials_proof`), *Tone* (`tone`), *Personality traits* (`personality_traits`), *Phrases you use* (`phrases_to_use`), *Phrases to avoid* (`phrases_to_avoid`), *Preferred length* (`content_length`), *Emoji use* (`emoji_use`), *Formatting style* (`formatting_style`), *Client comms tone* (`client_comms_tone`), *Client comms principles* (`client_comms_principles`), *Deal-breakers* (`deal_breakers`) from it and asks only for the rest. It establishes no standing fact about the business, so it hands nothing back unless the founder said something new along the way.
<!-- surge:brain-crosswalk:end -->

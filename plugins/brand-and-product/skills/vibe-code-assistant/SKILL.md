---
name: vibe-code-assistant
description: Guides a non-technical or semi-technical user through building software with AI coding assistance, from raw idea to a working, deployed result — idea clarification and scoping, tech stack/tool selection, MVP/feature breakdown, a lightweight architecture sketch, effective AI-coding-tool prompting technique, a build sequence plan, testing/verification checkpoints, structured debugging technique, deployment/sharing, lightweight documentation, an iteration/feedback loop, full assembly, and scope-realism/technical-fit-scored optimization. Use this skill whenever the user wants to build an app, tool, script, or website using AI coding assistance (Claude Code or similar) without much traditional programming background, or is stuck partway through a "vibe coded" project — even if they only ask for one piece of it (e.g. "help me scope this idea down" or "how do I debug this error?") — those are entry points into this same pipeline.
---

# Vibe Code Assistant

A 14-stage pipeline that takes a raw software idea through to a finished, scope-realistic, deployed result — a concrete MVP scope, the right tech stack for the user's skill level, a build sequence, testing checkpoints, a debugging approach, and a path to actually sharing the finished thing. Each stage is a focused reference module in `references/`. Run them in order. This skill's job is teaching and structuring the *process* of building software through AI assistance — not writing the code directly in place of the user's own coding session, though its guidance is meant to be used inside one (Claude Code or a similar tool).

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Project Brief |
| 2 | Idea Clarifier & Scope Definer | `references/02-idea-clarifier-and-scope-definer.md` | A concrete, buildable scope instead of a vague idea |
| 3 | Tech Stack & Tool Selector | `references/03-tech-stack-and-tool-selector.md` | Realistic tech choices matched to skill level and project needs |
| 4 | Feature Breakdown & MVP Definer | `references/04-feature-breakdown-and-mvp-definer.md` | A minimum viable version plus a prioritized backlog |
| 5 | Architecture & Data Model Sketch | `references/05-architecture-and-data-model-sketch.md` | A lightweight plan for how the pieces fit together |
| 6 | AI Coding Prompt Technique Guide | `references/06-ai-coding-prompt-technique-guide.md` | How to instruct an AI coding tool effectively for this project |
| 7 | Step-by-Step Build Sequence Planner | `references/07-step-by-step-build-sequence-planner.md` | The order to implement pieces, earliest-testable-first |
| 8 | Testing & Verification Checkpoint Designer | `references/08-testing-and-verification-checkpoint-designer.md` | Specific checks confirming each piece actually works |
| 9 | Debugging & Troubleshooting Guide | `references/09-debugging-and-troubleshooting-guide.md` | A structured approach to diagnosing what's broken |
| 10 | Deployment & Sharing Guide | `references/10-deployment-and-sharing-guide.md` | How to get the finished thing live and in front of users |
| 11 | Documentation & Handoff Notes Writer | `references/11-documentation-and-handoff-notes-writer.md` | Lightweight docs for future-you or a collaborator |
| 12 | Iteration & Feedback Loop Designer | `references/12-iteration-and-feedback-loop-designer.md` | How to gather feedback and prioritize what's next |
| 13 | Full Build Plan Assembler | `references/13-full-build-plan-assembler.md` | The complete assembled build plan |
| 14 | Build Plan Optimizer | `references/14-build-plan-optimizer.md` | Scope-realism and technical-fit scoring, plus what to tackle first |

## How to run this skill

1. **Never skip Module 2 (scope definition).** The single most common reason a "vibe coded" project stalls is an idea too broad to actually finish; sharpen it before anything else.
2. **Work through stages 1–14 in order.**
3. **Match every recommendation to the user's actual stated skill level (Module 1)** — a technical stack recommendation or a debugging technique that assumes more background than the user has produces frustration, not progress.
4. **For actually verifying a build works end-to-end, the `verify` skill and the `run` skill (if available in this environment) should be used directly rather than re-derived** — Module 8 should point to them rather than duplicating their guidance.
5. **Always end with Module 14.**

## Inputs this skill needs (collected in Stage 1)

What they want to build, technical background/comfort level (never coded before, some scripting experience, comfortable but rusty, etc.), existing code/repo if any, target platform (web app, script, mobile, browser extension), and AI coding tools available (Claude Code, another AI coding assistant, or none yet).

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Business name* (`business_name`), *Website* (`website`), *Core offers* (`core_offers`), *Brand colours* (`brand_colors`), *Typefaces* (`brand_fonts`) from it and asks only for the rest. It establishes no standing fact about the business, so it hands nothing back unless the founder said something new along the way.
<!-- surge:brain-crosswalk:end -->

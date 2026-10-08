---
name: master-ai-prompting
description: Teaches a user to prompt AI tools effectively for their specific recurring tasks — use-case clarification, prompt anatomy and structure, context/background-setting technique, role/persona assignment, output format and constraint specification, few-shot examples, iterative refinement technique, chain-of-thought/complex task breakdown, common prompting mistakes and fixes, tool-specific prompting nuances, a reusable prompt template library, full assembly, and a scored rewrite of the user's own real prompts. Use this skill whenever the user wants to get better at prompting AI, is frustrated with inconsistent AI output, wants a reusable prompt template for a recurring task, or asks how to write a better prompt for a specific goal — even if they only ask for one piece of it (e.g. "why isn't the AI giving me what I want?" or "help me write a template for this") — those are entry points into this same pipeline.
---

# Master AI Prompting

A 14-stage pipeline that takes a user's real, recurring AI use case through to a finished, tested prompting skill set — an understanding of what makes a prompt work, specific techniques for context, format, examples, and iteration, and a reusable template library built for their actual tasks. Each stage is a focused reference module in `references/`. Run them in order. This is a meta-skill: its subject is prompting itself, and its most important test is Module 14, which takes the user's own real prompt and rewrites it live so the improvement is concrete, not abstract.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Prompting Brief |
| 2 | Use Case Clarifier | `references/02-use-case-clarifier.md` | The exact outcome wanted from AI for a specific recurring task |
| 3 | Prompt Anatomy & Structure Teacher | `references/03-prompt-anatomy-and-structure-teacher.md` | The core components of an effective prompt |
| 4 | Context & Background-Setting Technique | `references/04-context-and-background-setting-technique.md` | How to give the right context without overloading it |
| 5 | Role & Persona Assignment Guide | `references/05-role-and-persona-assignment-guide.md` | When and how assigning a role actually improves output |
| 6 | Output Format & Constraint Specification | `references/06-output-format-and-constraint-specification.md` | How to specify exactly the format/structure wanted |
| 7 | Few-Shot Examples & Demonstration Technique | `references/07-few-shot-examples-and-demonstration-technique.md` | Using examples to guide style and structure |
| 8 | Iterative Refinement & Follow-Up Technique | `references/08-iterative-refinement-and-follow-up-technique.md` | How to improve a response instead of starting over |
| 9 | Chain-of-Thought & Complex Task Breakdown | `references/09-chain-of-thought-and-complex-task-breakdown.md` | Breaking a hard task into steps the AI can actually execute |
| 10 | Common Prompting Mistakes & Fixes | `references/10-common-prompting-mistakes-and-fixes.md` | The recurring input mistakes that produce weak output |
| 11 | Tool-Specific Prompting Nuances | `references/11-tool-specific-prompting-nuances.md` | How technique shifts across chat, coding, and image tools |
| 12 | Prompt Template Library Builder | `references/12-prompt-template-library-builder.md` | Reusable templates for the user's actual recurring tasks |
| 13 | Full Prompting Playbook Assembler | `references/13-full-prompting-playbook-assembler.md` | The complete assembled playbook |
| 14 | Prompting Skill Optimizer | `references/14-prompting-skill-optimizer.md` | A live before/after rewrite of the user's own real prompt |

## How to run this skill

1. **Work through stages 1–14 in order.**
2. **Ground every module in Module 1's real, specific use cases**, not generic prompting theory — a template built for a task the user doesn't actually do is a wasted module.
3. **Always end with Module 14, using the user's actual real prompt**, not a hypothetical example — the whole point of this skill is a concrete, provable improvement the user can see and reuse immediately.

## Inputs this skill needs (collected in Stage 1)

What tasks/use cases the user wants to use AI for, which AI tools they currently use, their current prompting habits and specific frustrations, a sample of a real prompt they've actually used recently (essential for Module 14), and their general comfort level with AI tools.

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if your Business Brain exists (from your Surge server, or `BUSINESS-BRAIN.md`), Stage 1 reads *Content types* (`content_types`), *Platforms* (`content_platforms`), *Tone* (`tone`), *Phrases to avoid* (`phrases_to_avoid`), *Admin support* (`admin_support`) from it and asks only for the rest. It establishes no standing fact about the business, so it hands nothing back unless the founder said something new along the way.
<!-- surge:brain-crosswalk:end -->

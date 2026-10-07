# Module 14: Voice Profile Optimizer

**Purpose:** Score the finished voice profile on distinctiveness, consistency, and usability, and prove it actually works by running a real test rewrite — the final quality gate before the profile is treated as ready to hand to every other skill.

## Process

1. **Score the assembled profile** on a simple rubric, 1-5 each:
   - **Distinctiveness** — is the voice summary specific enough that it couldn't apply to most other people/brands, or is it still generic ("friendly and professional" could describe almost anyone)?
   - **Evidence grounding** — is the profile built from real samples (Module 2), or leaning heavily on self-description with thin sample support?
   - **Usability** — is the quick-reference card actually fast to scan and apply, or still too long/abstract to use in practice?
   - **Consistency across channels** — does Module 7's calibration hold the voice recognizable across every listed channel, or does one context read as a completely different voice?
   - **AI-tell removal** — does the profile's own writing (not just its rules) avoid the generic patterns it identifies in Module 5, or does the profile itself read generically, which would undercut its credibility?
2. **Run the actual test**: take a genuinely generic passage (not one of Module 8's rehearsed examples) and run it through Module 10's rewrite engine live, then check the result against Module 3's spectrum map and Module 9's self-audit checklist — a profile that can't be demonstrated working on a fresh example isn't proven yet.
3. **Flag the lowest-scoring 1-2 dimensions** and revisit those specific modules — a low distinctiveness score in particular should be treated as a priority fix, since a generic profile defeats this skill's entire purpose regardless of how complete the rest of the pipeline is.
4. **Recommend a first real-world check-in point** — e.g. after the next 3-5 pieces of content produced using this profile, do a quick recalibration pass using Module 9's checklist to confirm the profile holds up outside the pipeline's own test conditions.

## Output format

```
SCORES (1-5): Distinctiveness:_ Evidence Grounding:_ Usability:_ Consistency Across Channels:_ AI-Tell Removal:_

LIVE TEST REWRITE:
Fresh generic passage: "[...]"
Rewritten result: "[...]"
Audit result: [pass / issues found]

TOP FIXES MADE: [list, tied to lowest scores]

FIRST REAL-WORLD CHECK-IN: [recommended timing/trigger]
```

## Handoff

This is the last stage — present the final scored voice profile to the user as the finished deliverable, ready to hand to every other Surge skill per Module 11's instructions. If any score is 3 or below, say so plainly rather than presenting the profile as "done" — flag it as a known weak point (e.g. "Distinctiveness scored low because the voice summary still reads as generic — recommend gathering 2-3 more real samples and re-running Modules 2-3 before treating this profile as final").

<!-- surge:brain-handback:begin -->
## Hand back to the Business Brain

This skill establishes facts the founder's `BUSINESS-BRAIN.md` should keep:

- Tone `tone`
- Personality traits `personality_traits`
- Phrases you use `phrases_to_use`
- Phrases to avoid `phrases_to_avoid`
- Preferred length `content_length`
- Emoji use `emoji_use`
- Formatting style `formatting_style`

Before finishing, write those as a block in the file's own shape — a `###` heading per field carrying its key, then the answer (bullets for a list, a sentence or two for text) — and tell the founder to fold it into `BUSINESS-BRAIN.md` under the matching keys, replacing the old answer rather than adding a second. In Claude Code, offer to update the file in place. On the Claude website or ChatGPT, remind them to replace the Project file.
<!-- surge:brain-handback:end -->

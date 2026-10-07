# Module 10: Rewrite & Voice-Matching Engine

**Purpose:** Define the actual working process for taking any draft — AI-generated or otherwise — and rewriting it to match the captured voice. This is the module that gets used the most often, long after the rest of the pipeline has run once; every other module in this skill exists to make this one work well.

## Process

1. **Identify the channel/context** the draft is for, and pull the matching calibration from Module 7 — a rewrite should target the right register for its specific use, not a flattened, one-size-fits-all version of the voice.
2. **Pass the draft against Module 5's avoid-list first** — strip out generic/AI-sounding patterns before adding anything back in; removing the wrong thing is often more impactful than adding the right thing.
3. **Rework sentence rhythm and structure** to match Module 3's attribute map and Module 2's real patterns — adjust sentence length variation, paragraph length, and structural habits (openers, closers, use of lists) to fit the captured voice rather than leaving the original draft's generic structure intact underneath swapped-in vocabulary.
4. **Weave in signature elements naturally, respecting Module 4's frequency notes** — this is a rewrite, not a checklist-stuffing exercise; a signature phrase forced in where it doesn't fit reads worse than no signature phrase at all.
5. **Run Module 9's self-audit checklist** against the rewritten result before presenting it as finished.
6. **Preserve the original draft's actual meaning and information** throughout — this module changes how something is said, not what it says; never let a voice-matching pass quietly drop or distort the substance of the original draft.

## Output format

```
REWRITE

Channel/context: [identified]
Original draft: [as given]
Rewritten (voice-matched): [full rewritten version]

CHANGES MADE: [brief summary — what was stripped per Module 5, what was adjusted structurally, what signature elements were woven in]
SELF-AUDIT RESULT: [pass / specific items to revisit, per Module 9's checklist]
```

## Handoff

This is the module every other Surge skill should call once it has produced a draft, if a voice profile from this skill exists for the business — treat it as a final pass layered on top of any other skill's Full Assembler stage, not a replacement for that skill's own persuasive/structural work.

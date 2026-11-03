# Module 9: Debugging & Troubleshooting Guide

**Purpose:** Give a structured approach to diagnosing something that doesn't work — the moment a "vibe coded" project most commonly stalls out, especially for a user without a strong debugging background, and the moment this skill's guidance matters most.

## Process

1. **Teach reading the error message first**, even briefly — many error messages point directly at the problem (a misspelled variable name, a missing file) and pasting the exact error text to the AI coding assistant is far more effective than describing the symptom vaguely ("it's not working").
2. **Teach isolating the failing piece** — since Module 7's build sequence adds one piece at a time with a checkpoint after each, a new failure almost always traces to the most recent change; check there first rather than searching the whole project.
3. **Teach providing the AI assistant with the actual error text, the relevant code, and what was expected to happen vs. what actually happened** — this maps directly to Module 6's technique of specific, concrete feedback rather than vague descriptions.
4. **Teach when to roll back** — if a change introduced a problem that isn't quickly resolved, reverting to the last known-good state (per Module 7's checkpoints) and re-attempting more carefully often resolves things faster than continuing to debug forward.
5. **Teach recognizing when to ask a more fundamental question** — if the same type of error keeps recurring, it may indicate a gap in Module 5's architecture or Module 3's tech choice worth revisiting, not just another one-off fix.

## Output format

```
DEBUGGING APPROACH:
1. Read the actual error message/text first
2. Isolate to the most recent change (per Module 7's sequence)
3. Give the AI assistant: exact error text + relevant code + expected vs. actual behavior
4. If not quickly resolved, roll back to the last known-good checkpoint and retry more carefully
5. If the same error type recurs, revisit Module 3/5's choices rather than continuing to patch
```

## Handoff

This is a standing reference the user returns to throughout building, not a one-time output — Module 13 includes it in the final assembled plan as an always-available troubleshooting reference.

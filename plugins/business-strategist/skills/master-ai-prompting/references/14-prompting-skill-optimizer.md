# Module 14: Prompting Skill Optimizer

**Purpose:** Prove the whole pipeline actually works by rewriting the user's own real prompt (from Module 1) live — this is the module that makes the improvement concrete and provable rather than a set of abstract principles the user has to trust without seeing evidence.

## Process

1. **Take the user's real sample prompt from Module 1** — not a hypothetical example.
2. **Score it against the technique modules**: which components (Module 3) were missing, whether context (Module 4) was sufficient, whether format (Module 6) was specified, whether an example (Module 7) would have helped, whether it fell into any common mistake (Module 10).
3. **Rewrite the prompt live**, applying the specific fixes identified, and show the before and after side by side so the improvement is visible and concrete.
4. **Explain each specific change made** and which technique module it came from, so the user learns the reasoning, not just receives an improved prompt to copy without understanding why it's better.
5. **Recommend the user actually run both versions** (if practical) to see the real difference in output, since seeing it firsthand cements the lesson more than being told about it.

## Output format

```
SCORING (against Modules 3, 4, 6, 7, 10): [specific gaps found in the user's real prompt]

BEFORE (user's real prompt): "[verbatim]"
AFTER (rewritten): "[improved version]"

CHANGES MADE (with reasoning per change): [...]

RECOMMENDATION: [try running both versions to see the difference firsthand]
```

## Handoff

This is the last stage — present the scored rewrite alongside the full playbook from Module 13 as the finished deliverable. This module's demonstration is the single most convincing part of the whole skill; don't skip presenting it even if earlier stages feel sufficiently thorough on their own.

<!-- surge:brain-handback:begin -->
## Hand back to the Business Brain

This skill establishes no standing fact about the business, so there is nothing it must write to the brain. If the founder said something new along the way — a price, a goal, a boundary, a phrase they actually use — hand it back anyway as a block in the file's own shape (a `###` heading per field carrying its key), and tell them which key it belongs under.

Where the block goes depends on where the brain is:

- **A Business Brain import tool is available** — `business_brain.import_portable`, or one whose name ends in `business_brain_import_portable` (the founder's Surge server, in Claude Code or Codex). Offer to send the block to it exactly as shown. It lands a draft, merged over what is already answered, so say 'draft', never 'updated'. The founder publishes it on the Business Brain page. If the tool refuses (a read-only connection, no business workspace), hand the block over for the founder to import on that page.
- **You read a hosted brain but have no import tool:** hand the block over for the founder to import on the Business Brain page. Never start a `BUSINESS-BRAIN.md` beside a hosted brain.
- **Otherwise, the brain is the file:** tell the founder to fold the block into `BUSINESS-BRAIN.md` under the matching keys, replacing the old answer rather than adding a second. In Claude Code, offer to update the file in place. On the Claude website or ChatGPT, remind them to replace the Project file.
<!-- surge:brain-handback:end -->

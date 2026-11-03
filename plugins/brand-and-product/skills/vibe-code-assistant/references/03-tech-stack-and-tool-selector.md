# Module 3: Tech Stack & Tool Selector

**Purpose:** Recommend realistic technology choices matched to Module 1's actual skill level and Module 2's scoped idea — the most common way this step goes wrong is recommending a technically "correct" or fashionable stack that's mismatched to what the person can actually work with and maintain.

## Process

1. **Match platform choice to the scoped idea** (Module 2) and target platform (Module 1): a simple internal tool might be best as a script; something needing a shareable link is likely a simple web app; a public-facing product with real users likely needs a proper web app framework.
2. **Match technical depth to skill level**: for a never-coded user, favor no-code/low-code tools or the simplest possible code-based approach with heavy AI-assistant guidance at every step; for someone comfortable but rusty, a standard, well-documented framework with strong AI-coding-tool support; for an experienced user wanting AI-accelerated building, whatever stack they'd normally choose, since the AI assistance changes the speed of building, not the appropriate complexity ceiling.
3. **Favor widely-used, well-documented technology** over niche or cutting-edge choices — AI coding tools (and available help/documentation generally) perform better and more reliably on popular, well-established stacks.
4. **Recommend specific starting tools**: a specific hosting/deployment platform (feeds Module 10), a specific framework or no-code platform, and confirm it's compatible with Module 1's available AI coding tool.

## Output format

```
RECOMMENDED STACK: [platform/framework/tool choice] — reason: [fit to skill level + scoped idea]
DEPLOYMENT/HOSTING CHOICE: [specific platform, feeds Module 10]
AI-TOOL COMPATIBILITY CHECK: [confirmed compatible with Module 1's available tools]
WHY NOT A MORE "ADVANCED" STACK: [if relevant, briefly explain why simpler is the right call here]
```

## Handoff

Feeds Module 5 (architecture sketch uses this stack's real constraints) and Module 6 (prompting technique should reference this specific stack/tool).

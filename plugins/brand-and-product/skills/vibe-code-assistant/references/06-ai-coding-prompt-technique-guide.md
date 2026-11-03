# Module 6: AI Coding Prompt Technique Guide

**Purpose:** Teach how to instruct an AI coding tool effectively for this specific project — the quality of "vibe coded" output depends heavily on how the human directs the AI assistant, and this is a distinct skill from general prompting (see `master-ai-prompting` for the broader discipline; this module applies it specifically to coding contexts).

## Process

1. **Teach giving concrete, scoped instructions** — "build the whole app" produces worse results than "add a form that lets the user enter a task name and due date, and save it to the list we already have," consistent with Module 4's MVP breakdown and Module 7's build sequence (always ask for one sequenced piece at a time, not everything at once).
2. **Teach providing the right context** — pointing the AI assistant at the relevant existing files/code rather than assuming it remembers everything from earlier in a long conversation, and re-stating key constraints (the tech stack from Module 3, the architecture from Module 5) when starting a fresh session.
3. **Teach iterative refinement technique** — when the first result isn't quite right, giving specific feedback ("this works, but the date isn't validating correctly — it should reject past dates") rather than vague feedback ("this doesn't work") or restarting from scratch.
4. **Teach asking the AI assistant to explain, not just produce** — for a user with less technical background, explicitly asking "explain what this code does" after each piece builds real understanding over time rather than accumulating code nobody understands.
5. **Teach when to ask for smaller pieces** — if a request produces a large, hard-to-review chunk of code, the next request should be scoped smaller, not bigger.

## Output format

```
PROMPTING TECHNIQUE FOR THIS PROJECT:
Scoping instructions: [example of a well-scoped request, tied to Module 4/7]
Providing context: [what to reference each session — tech stack, architecture, relevant files]
Iterative refinement: [example of specific vs. vague feedback]
Asking for explanation: [when and how to request this, given Module 1's skill level]
```

## Handoff

This technique should be applied throughout Module 7's actual build sequence — reference it explicitly at each step rather than assuming the user will improvise good prompting on their own.

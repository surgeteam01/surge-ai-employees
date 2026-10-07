# Module 11: Tool-Specific Prompting Nuances

**Purpose:** Teach how technique shifts across different types of AI tools — a technique that works well in a chat assistant doesn't automatically transfer identically to a coding assistant or an image generator.

## Process

1. **Teach chat/writing assistant nuances**: benefits most from Modules 3-8's full technique set — context, format, examples, and iterative refinement all apply directly and richly.
2. **Teach coding assistant nuances**: benefits especially from Module 9's task breakdown (matching `vibe-code-assistant`'s Step-by-Step Build Sequence Planner logic — sized, sequential requests with verification between them) and from being extremely specific about the exact file/function/behavior in question rather than describing a change vaguely.
3. **Teach image-generation tool nuances**: benefits from very different technique than text — specific visual/compositional language, style references, and negative prompts (what to avoid) matter more here than the context/role techniques that dominate text prompting; reference `create-ai-product-photos`'s AI Prompt Engineering Lab for the fuller treatment of this specific case.
4. **Apply to Module 1's actual tools used** — give the user technique notes specific to the tools they actually use, not a generic survey of tools they don't.

## Output format

```
CHAT/WRITING ASSISTANT NUANCES: [...]
CODING ASSISTANT NUANCES: [tied to vibe-code-assistant's build-sequence logic]
IMAGE-GENERATION NUANCES: [tied to create-ai-product-photos's prompt lab]

APPLIED TO USER'S ACTUAL TOOLS (from Module 1): [specific notes for their real toolset]
```

## Handoff

Feeds Module 12's template library — templates should be built for the specific tool(s) the user actually uses.

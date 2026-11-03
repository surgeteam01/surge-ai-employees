# Module 5: AI Chatbot / Conversational Capture Designer

**Purpose:** Design a conversational flow for an AI chatbot (website, social DM, or similar) that engages a visitor, qualifies them naturally through conversation, and captures their information — a genuinely new mechanic in this repo, since this is the only skill dealing with a real-time conversational AI interface rather than static or sequenced content.

## Process

1. **Design the opening prompt** — a natural, low-pressure conversation starter tied to the page/context the chatbot appears on, not a generic "how can I help you?" that fails to signal any specific value.
2. **Design a branching qualification flow** — a small number of natural questions that surface fit and intent (drawing on Module 6's scoring criteria once available, or informing it here if this runs first) without feeling like an interrogation; each question should feel like it's helping the visitor, not just extracting data for the business.
3. **Design graceful handling for common scenarios**: a visitor who wants to talk to a human immediately (route to a booking link or handoff, per Module 10), a visitor who isn't a good fit (a polite, honest redirect rather than a forced pitch), and a visitor with a specific question the bot can't answer (escalate rather than guess).
4. **Design the capture moment** — once genuine engagement and some qualification has happened, ask for contact info with a clear, specific reason tied to what's just been discussed, not as an abrupt gate before any value has been delivered.
5. **Keep the bot's tone consistent with the brand voice** — reference a `write-like-a-human` profile if one exists.

## Output format

```
CHATBOT FLOW:

OPENING PROMPT: [context-specific, natural]

QUALIFICATION QUESTIONS (branching): [ordered, with branch logic for different answers]

EDGE CASE HANDLING:
Wants a human immediately: [route to Module 10's booking]
Not a good fit: [polite, honest redirect]
Question the bot can't answer: [escalation path]

CAPTURE MOMENT: [when/how contact info is requested, with reason tied to the conversation]
```

## Handoff

Feeds Module 6 (qualification answers become scoring inputs) and Module 10 (the "wants a human" path routes to booking automation).

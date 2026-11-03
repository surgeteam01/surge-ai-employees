# Module 4: Funnel Architect

**Purpose:** Produce the full sequence-by-sequence funnel map, mapped to the buyer's awareness stage from Module 3 and the funnel goal from Module 1, before any actual email copy gets written. This is the email-funnel equivalent of a sales page outline — the skeleton everything else fills in.

## Process

1. **Decide which sequences the funnel actually needs.** The four possible sequences are Welcome/Indoctrination, Nurture, Sales/Pitch, and Cart-Close/Urgency — but not every list needs all four:
   - *Unaware / Problem-aware, cold list* → needs all four, and a longer Welcome + Nurture run before the pitch (the list doesn't trust the sender yet or know the solution category).
   - *Solution-aware / Product-aware* → can shorten Welcome, run a lighter Nurture, and move to the Sales sequence sooner.
   - *Most-aware* (e.g. past customers, webinar attendees who just watched the pitch) → Welcome and Nurture can collapse to 1 email each or be skipped entirely; go almost straight to Sales + Cart-Close.
2. **Set sequence length and cadence.** For each sequence in scope: how many emails, and how many days/hours apart. A cold list needs slower spacing (1 email every 2-3 days in Nurture) so it doesn't read as spammy; a live cart-close sequence compresses to daily or twice-daily as the deadline approaches.
3. **Map the trigger for each sequence** — what causes a subscriber to enter it: opt-in for a lead magnet (→ Welcome), finishing Welcome (→ Nurture), a specific date/cart-open event or a high-engagement tag from Nurture (→ Sales), reaching the last Sales email without converting (→ Cart-Close), or converting at any point (→ exit all remaining sequences and route to a customer/onboarding tag instead).
4. **Note branching logic** where the ESP (from Module 1) supports it: e.g. subscribers who click a "buy" link get tagged and removed from further pitch emails; subscribers who open every email but never click get a re-engagement variant instead of the standard next email. If the ESP can't support branching, say so and default to a single linear path.
5. **Note which modules feed which sequence**, so nothing gets built twice.

## Output format

```
SEQUENCES IN SCOPE: [which of Welcome / Nurture / Sales / Cart-Close are included] — reason: [awareness stage + funnel goal]

FUNNEL MAP:
Sequence: [name]
  Trigger to enter: [event]
  Emails: [count] — cadence: [spacing]
  Exit condition: [what removes a subscriber, e.g. "clicks buy link"]
  Fed by: [module #]
(repeat per sequence)

BRANCHING LOGIC: [tag-based branches supported by the ESP, or "linear path — ESP doesn't support branching"]
```

## Handoff

This map is the skeleton Module 13 (Assembler) will fill in email-by-email. Every sequence in the map must map to exactly one upstream writing module's output (6, 7, 10, or 11) — if a sequence doesn't have a clear source, flag it now rather than discovering the gap at assembly time.

# Module 5: Outreach Architect

**Purpose:** Produce the full touch-by-touch sequence map — channels, cadence, triggers, and branching — before any actual message copy gets written. This is the cold-outreach equivalent of a sales page outline or an email funnel map: the skeleton everything else fills in.

## Process

1. **Decide the channel mix** from Module 1's available channels and Module 3's likely channel preference: email-only, LinkedIn-only, phone-only, or a sequenced combination (e.g. connection request → email → call). Don't add a channel just because it's available if the ICP is unlikely to engage there — a channel used badly hurts more than a channel left out.
2. **Set touch count and cadence.** A typical cold sequence runs 4-7 touches over 2-3 weeks: an initial touch, 2-4 value-add follow-ups spaced 2-4 days apart, and a final breakup touch. Colder/larger lists can run leaner (fewer, more spaced-out touches to protect sender reputation); warmer or referral-adjacent lists can compress.
3. **Map the trigger for entry and exit** — what starts the sequence (added to the list, a specific trigger event from Module 4 detected), and what removes a prospect (a reply of any kind — always stop automated sends the moment a human replies — a meeting booked, an explicit opt-out/unsubscribe request, or reaching the final breakup touch with no response).
4. **Note branching logic**, if the available tooling supports it: a reply expressing interest routes to a human/meeting-booking flow (Module 11); a reply with an objection routes to Module 9's playbook; a "not now" reply routes to a long-term nurture list rather than the active sequence. If no such tooling exists, default to a simple linear path and say so.
5. **Respect sending limits and compliance from Module 1's brief** — cadence and volume must fit within confirmed daily send limits and any compliance-driven requirements (e.g. a working unsubscribe/opt-out mechanism on every cold email).

## Output format

```
CHANNEL MIX: [channels, in order if sequenced] — reason: [ICP fit + Module 1 availability]

SEQUENCE MAP:
Touch 1 — Channel: [x] — Timing: [entry trigger] — Job: [initial outreach]
Touch 2 — Channel: [x] — Timing: [+N days] — Job: [value-add follow-up]
Touch 3 — Channel: [x] — Timing: [+N days] — Job: [...]
(repeat per touch)
Final Touch — Channel: [x] — Timing: [+N days] — Job: [breakup]

EXIT CONDITIONS: [reply / meeting booked / opt-out / sequence completed with no response]
BRANCHING LOGIC: [tag/route-based branches supported, or "linear path — no branching tooling available"]
```

## Handoff

This map is the skeleton Module 13 (Assembler) will fill in touch-by-touch. Every touch must map to exactly one upstream writing module's output (6, 7, or 12) — if a touch doesn't have a clear source, flag it now rather than discovering the gap at assembly time.

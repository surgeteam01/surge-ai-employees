# Module 3: The market

**Purpose:** What the person could have. For each need the inventory did not cover,
find whether it exists somewhere — in Ops' registry but not in their charter, in the
outbound catalogue but not bound, on a market such as Treg — before concluding it must
be built. A need routed to *request* when a tool already existed costs a developer a
sprint.

## Three places to look, in order

1. **Ops' own catalogue.** Call `design.search_capabilities` with the need in words
   where you have the tool (Agent Studio, Client OS, or a Claude connected to Surge).
   It answers from three sources at once, each hit already carrying its route:
   - a registry tool outside this person's charter → **grant**, naming the agent that
     holds it and the remedy ("ask an admin to assign The Growth & Sales Rep to you");
   - a provider in the outbound catalogue not bound → **connect**, naming the page that
     binds it;
   - a market endpoint → **connect**, with the provider, the endpoint and the **price
     per call as the market stated it**.
   In Client OS the registry source is withheld; you see providers and market hits only.
2. **This Claude's own reach.** In the person's own Claude: if a registry search tool
   is present (one whose name contains `search_mcp_registry` or `suggest_connectors`),
   search it for the need and list what it found. If a **Treg** connector is present
   (`treg.to` — one key to a few thousand priced endpoints for SEO, enrichment, social
   and ads, billed per call), search it and quote the price it reports.
3. **What you know.** Only after the two reads, and only labelled as such: "I believe
   HubSpot has an API for this; I could not verify it from here."

## Prices are quoted, never computed

A market endpoint's price is a string the market stated. Write it down exactly. Do not
multiply it by runs per week, do not convert it to another currency, do not call it
cheap or expensive. If no price came back, write "not priced" — never "free".

## What this module never does

- **It never calls a market endpoint.** Ops reads the catalogue and stops; so do you.
  A design that needs one carries it as a `connect` need, requested by name with its
  stated price, for a person to decide.
- **It never requests access.** A `grant` is an admin's act on their own desk.
- **It never widens the design to use what it found.** A hit is a candidate; the person
  chooses in Module 4.

## Handoff

To Module 4 with every need now carrying a candidate (or none), the candidate's key,
and its stated price where there is one.

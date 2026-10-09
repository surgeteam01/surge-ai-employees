# Module 2: The inventory

**Purpose:** What this person already has. A design that names a tool they cannot
call is fiction, and the only cure is to read the inventory rather than remember it.

## Where you are decides how you read it

- **Agent Studio or Client OS (you have tools):** call `design.read_inventory` with no
  arguments. It answers for the person you are talking to and nobody else: the tools
  their coworkers may call (with each one's side effect and whether it needs approval),
  the workflows they may launch, the skills each of their employees holds, the
  connectors bound for their organization, and the evaluation suites that exist for
  those skills. In Client OS the reply says `scope: "client"` and holds no suites; say
  nothing about internal agents a client cannot see.
- **The person's own Claude, connected to Surge** (a tool whose name ends in
  `design_read_inventory` is present): call it. Then **also** list what this Claude
  itself can reach — connectors, MCP servers, local tools — because the design may run
  here, not in Ops.
- **The person's own Claude, not connected:** list the connectors and MCP servers this
  Claude can see, and say in one sentence that this is all you can see: "I can only see
  the tools in this Claude; if you connect your Surge server I can read what Ops
  offers."

Never guess. If a read fails, say it failed and what that means for the design
("I could not read your workflows, so every workflow below is routed as *propose*").

## What to do with it

Lay the interview's `uses` list beside the inventory and mark each line:

| The person said | You found | So |
|---|---|---|
| "Zoho CRM" | `crm.list_leads` in their tools | the need is **have** |
| "Canva" | Canva in the catalogue, not bound | the need is **connect** |
| "a spreadsheet of quiet leads" | nothing | the need is **propose** (a workflow) or **request** |

Keep the inventory's own keys. `crm.list_leads` is the ref; "the CRM tool" is the
label. The desk links by key.

## What the inventory never tells you

- Whether a tool is *good* for the job — that is what the cases measure in Module 4.
- Whether an admin would grant a tool the person does not have — that is a `grant`
  route, and it is the admin's decision, never yours.
- Anything about other people's capability. The inventory is the person's own.

## Handoff

To Module 3 with every need the inventory did not cover. If the inventory covered
everything, go straight to Module 4 and say so: the best design is sometimes a skill
over tools the person already had.

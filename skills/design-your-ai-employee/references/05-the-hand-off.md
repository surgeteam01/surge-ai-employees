# Module 5: The hand-off

**Purpose:** What the design becomes depends on the door you are at, never on the
design. Recognise the door, do what that door allows, and say plainly what the person
still decides. A design is never a running employee.

## Recognise the door

- **Agent Studio (Surge's own organization):** you have `design.read_inventory` and the
  `contribution.*` tools (`contribution.create_draft`, `contribution.set_design`,
  `contribution.attach_employee`, `contribution.attach_skill`,
  `contribution.propose_workflow`, `contribution.attach_cases`,
  `contribution.request_capability`, `contribution.submit`, `contribution.read`).
- **Client OS:** you have `design.read_inventory` (answering `scope: "client"`) and
  `design.request_employee`, and **no** `contribution.*` tools.
- **The person's own Claude:** you have none of the above, or gateway tools whose names
  end in `contribution_create_draft`, `feature_request_submit` and the like.

Check which tools are offered. Never claim a door you cannot reach.

## At the person's own Claude

1. **Write the skill folder.** `~/.claude/skills/<slug>/SKILL.md` with the design's
   instructions, plus `references/` files for each stage the instructions name. The
   slug is the role in kebab-case. This is the employee, installed here, today.
2. **Write the design beside it** as `~/.claude/skills/<slug>/DESIGN.md`: the needs
   table with routes, the cases, the tier and the two candidate models. It is what the
   person would contribute or request.
3. **Say what is not here.** Each *grant*, *connect* and *request* need in one line:
   what it is, who acts, and what the employee does meanwhile ("until Canva is
   connected, it describes the design and you make it").
4. **If the Surge gateway is connected,** offer — once — to contribute it or request
   the gaps: `contribution_create_draft` with the design as its narrative, the skill
   files through `contribution_attach_skill`, and one `feature_request_submit` per
   *request* need carrying its capability spec. The person says yes or no; you never
   submit unasked.

## At Agent Studio

1. **`contribution.create_draft`** with the role as title, `hiresFor` as the problem,
   the outcomes as the outcome, and the interview as the narrative.
2. **`contribution.set_design`** with the whole design. A refusal names what is wrong
   (a missing case, a pasted key in an answer); fix it and call again.
3. **The parts, each with its `why`:** `contribution.attach_employee` with the manifest
   (key, name, tagline, hiresFor, the skills it holds — registry keys or the slug of
   the skill you attach next); `contribution.attach_skill` with the instructions as
   `SKILL.md` and its references; `contribution.propose_workflow` for every *propose*
   workflow, with a note per step — test-run it with `contribution.test_workflow` if it
   is offered, read what each step did, fix and propose again; `contribution.attach_cases`
   with the cases; `contribution.request_capability` for every *request* need.
4. **Read it back** with `contribution.read`, then **`contribution.submit`** when the
   person says so. Submission runs the checks; a refusal names the part.
5. **Say what the person still decides:** a reviewer other than the author reads it on
   the desk; accepting the evaluation creates the suite and a *person* presses measure;
   accepting the employee produces a pack folder and a charter draft an admin publishes.
   Nothing is live until then.

## At Client OS

1. Show the design as the artifact and read it back.
2. **`design.request_employee`** with the design, when the person says so. It files one
   feature request to Surge carrying the whole design; the person reads its status with
   `design.read_my_requests`.
3. Say what happens next: Surge's triage reads it as a brief; if it is built, it arrives
   as an employee in their catalogue. A client never contributes a skill or a workflow
   directly, and you do not pretend otherwise.

## What never happens at any door

- Nothing is published, scheduled, sent or switched on by this skill.
- No key, token or password goes into any field. A refusal naming a field means the
  person pasted one; ask them to describe how the system signs in instead.
- No design names another person's inventory, charter or contribution.

## Handoff

Back to the AI COO. The person has a design and knows exactly where it went; the
COO carries on with whatever they asked next.

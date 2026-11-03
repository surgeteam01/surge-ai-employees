# Module 4: The share

**Purpose:** Put the skill where the person can use it now, and — when they say so —
offer it to the team through a reviewed contribution. What happens depends on the
door you are at, never on the skill.

## Recognise the door

- **Agent Studio:** you have the `contribution.*` tools (`contribution.create_draft`,
  `contribution.attach_skill`, `contribution.read`, `contribution.submit`).
- **The person's own Claude:** you can write files, and the Surge gateway — if it is
  connected — offers tools whose names end in `contribution_create_draft`,
  `contribution_attach_skill`, `contribution_read`, `contribution_submit`.
- **Client OS:** none of the above. A client does not contribute a skill directly.

Check which tools are offered. Never claim a door you cannot reach.

## At the person's own Claude

1. **Install it here, today.** Write the folder to `~/.claude/skills/<slug>/`. It works
   in this Claude from the next conversation, whatever happens next.
2. **Offer once to add it to Surge.** If the gateway tools are not offered, say so in
   one line ("your Surge connection isn't set up here, so it stays on this machine")
   and stop. Never leave the local skill half-written because the share failed.
3. **On yes, send it as a draft that only they can see:**
   - Read `~/.claude/skills/<slug>/.surge-share.json` first. If it holds a
     `contributionId` and `partId`, this skill was sent before: reuse both, so the
     same draft is updated rather than a second one made.
   - Otherwise `contribution_create_draft` — the title, the problem the skill
     solves, the outcome it gets, and how it works in a few sentences.
   - `contribution_attach_skill` with `partTitle` = the title, `forEmployee` = the
     owner's pack key from Module 3 (leave it out if there is none), `why` = one line
     on who it helps, and `files` = every file in the folder by its path inside it
     (`SKILL.md`, `references/01-….md`). More than 50 files or a very large skill goes
     in several calls with the `partId` the first call returned.
   - Write `{"contributionId": "…", "partId": "…"}` to
     `~/.claude/skills/<slug>/.surge-share.json`. That file is the memory that keeps a
     re-send an update; it is never sent itself.
4. **Read it back** with `contribution_read` and tell the person it is a **draft**:
   visible to them in Ops, to nobody else.
5. **Offer to send it for approval** with `contribution_submit` — only when the person
   says so. A refusal names the part and the problem; fix the file and send it again.

## At Agent Studio

The same sequence with the Studio tools: `contribution.create_draft` (or the ids you
were given for this skill earlier in the conversation), `contribution.attach_skill`
with `forEmployee`, `contribution.read`, and `contribution.submit` when the person
says so. There is no folder on disk here: the draft *is* where the skill lives until
it is accepted, so show the person the files as an artifact as well.

## At Client OS

Show the skill as an artifact so the person can copy it into their own Claude. Say
plainly that a client asks Surge for new skills and employees with
`design.request_employee`; you do not pretend to contribute one.

## Sharing a skill you did not write here

The person may want to share a skill that already exists — made in another
conversation, by another tool, or by hand. Sharing it is the same sequence as above;
only how you read it differs.

- **In the person's own Claude:** ask which skill, or list the folders in
  `~/.claude/skills/` and let them pick. Read `SKILL.md` and every file under the
  folder — never anything outside it. If it has a `.surge-share.json`, it was sent
  before: reuse its ids so the draft is updated.
- **In Agent Studio:** ask them to attach the skill's `SKILL.md` and its reference
  files (`.md` or `.txt`) to the conversation, and use each file's text exactly as
  attached, with the path they say it has in the folder. A `.zip` cannot be attached
  here, and an attached file longer than the conversation keeps is cut — if either is
  the case, or a file says it was cut, do **not** share a partial skill: send them to
  **Share a skill** in Ops (`/agents/share`), which takes the folder or a `.zip`
  whole.
- **Either way:** check it the way Stage 2 does — a `SKILL.md` with `name` and
  `description`, nothing pointing outside the folder, no key anywhere. Say what would
  fail and offer to fix it; never change their skill without asking. Then decide the
  owner per Stage 3 and share.

The person can also do all of this without you: **Share a skill** in Ops
(`/agents/share`) uploads a skill's folder or `.zip` as a draft, names the employee
it is for, and sends it for approval.

## What the person still decides

Say it, every time:

- **A draft is theirs alone.** Nothing reaches anybody else's work until they submit
  it *and* a reviewer — somebody other than them — accepts it.
- **Accepting is not publishing.** An accepted skill is taken into the skill corpus by
  a developer and reaches the owner's pack on the next release.
- **Sending again updates the draft**, and an edit to a skill sent back for changes
  reopens it.

## What never happens at any door

- Nothing is submitted, published or switched on without the person saying so.
- No key, token or password goes into any field or file.
- No skill is attached to another person's contribution.

## Handoff

Back to the person's work. They know where the skill lives, who holds it, and what is
still theirs to decide.

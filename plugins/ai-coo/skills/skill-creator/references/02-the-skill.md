# Module 2: The skill

**Purpose:** Turn the five answers into a skill folder that passes the same checks
every Surge skill passes, so a reviewer can accept it without rewriting it.

## The folder

```
<slug>/
  SKILL.md
  references/
    01-<stage>.md
    02-<stage>.md
```

- **The slug** is the job in kebab-case: lowercase letters, digits and hyphens, 2 to
  64 characters (`board-pack`, `weekly-client-update`). It is also the folder name.
- **Small jobs need no `references/`.** Add a reference file only for a stage long
  enough to deserve one, and only ever one per stage `SKILL.md` names.

## SKILL.md

Frontmatter first — exactly two fields:

```
---
name: <slug>
description: <what it does, then "Use this skill whenever the user says …" with the trigger phrases from Module 1, then what it is NOT for>
---
```

- `name` equals the folder name.
- `description` is one line, at most 1024 characters. It is what decides whether the
  skill is used at all, so lead with the job and spend most of it on trigger phrases.

Then the body:

1. `# <Title>` and a short paragraph: what this skill is for and who it serves.
2. **The steps**, numbered, each a thing to *do*, in order. Where a step has its own
   reference file, name the file.
3. **Inputs this skill needs**, as one paragraph.
4. **What it never does**, from Module 1's fifth answer.

## Rules every skill keeps

- **Nothing points outside the folder.** No absolute paths, no `..`, no links to
  somebody's drive. A reference is a path inside the skill.
- **No keys, tokens or passwords anywhere** — not in an example, not in a placeholder
  that looks real. Ops refuses a file containing one, by name.
- **No code to run.** A skill may show an example; nothing in it is ever executed, and
  `allowed-tools` in frontmatter is ignored.
- **The person's voice, not a template's.** Use their words for the job and the
  deliverable; strip anything generic you would not say to them directly.

## Read it back

Show the whole folder as a document. Ask: would a colleague who has never met this
person get the same result from it? Change it until the person says it is right.

## Handoff

To Module 3 with the folder written, the slug and the title.

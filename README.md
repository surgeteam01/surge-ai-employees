# Surge AI Employees

AI Employees for founders: a team of Claude skills, each one a job a founder
already has a name for, with an AI COO as the front door and a Business Brain
that remembers your business so nobody asks you to explain it twice.

**This repository is generated.** Every file in it is published from Surge's
own source by a script, and an edit made here is overwritten by the next
publish. Report a problem in the community instead, or, if you are a developer,
read `install.sh` before you run it — that is what a public repository is for.

## Install into Claude Code — one command

```bash
curl -fsSL https://raw.githubusercontent.com/surgeteam01/surge-ai-employees/main/install.sh | bash
```

That installs the whole team. To install one AI Employee, or a few, name them:

```bash
curl -fsSL https://raw.githubusercontent.com/surgeteam01/surge-ai-employees/main/install.sh | bash -s -- content-marketer
curl -fsSL https://raw.githubusercontent.com/surgeteam01/surge-ai-employees/main/install.sh | bash -s -- business-strategist growth-and-sales
```

The keys are `business-strategist`, `content-marketer`, `growth-and-sales`, `brand-and-product`, or `all`.

It works on macOS, Linux, WSL and Windows under Git Bash. It puts each skill in
`~/.claude/skills`, each AI Employee's training guide in `~/.claude/surge`, and
asks you nothing. No sudo, nothing left running. To install into one project
only, run it from that project's folder with `SURGE_SKILLS_DIR=.claude/skills`
in front of `bash`.

**To update, run the same command again.** It refreshes every AI Employee it
has installed on that machine, keeps anything you changed when the update has
nothing new for it, and when the update changes a file you also changed, it
puts your copy in `~/.claude/surge/backups` first and tells you where.

Then start a new Claude Code session and ask: **Who do I have on my team?**

## Install on the Claude website or desktop app

Skills on claude.ai are uploaded one zip at a time under Settings →
Capabilities → Skills. Download the AI Employee's zip from `zips/`, unzip it,
and upload each zip inside its `upload-to-claude-ai/` folder. The `INSTALL.md`
inside the zip walks through it.

You need a paid Claude plan (Pro or higher). Skills are not available on the
free tier.

## The team

| AI Employee | Key | What they do | Skills |
|---|---|---|---|
| **The Business Strategist** | `business-strategist` | Tells you what is actually wrong, and what to fix first. | 8 |
| **The Content Marketer** | `content-marketer` | Fills the calendar, in your voice, without you writing it. | 9 |
| **The Growth & Sales Rep** | `growth-and-sales` | Turns attention into booked calls, and calls into revenue. | 8 |
| **The Brand & Product Builder** | `brand-and-product` | Builds the thing you sell, and makes it look like it is worth the price. | 8 |

Every AI Employee comes with **The AI COO** (the front door: ask it who you
have, and it routes a goal to the right skill or tells you which employee holds
it) and **the Business Brain** (one interview, one file, read first by every
skill).

Each employee's `README.md`, `TRAINING.md` and `VERSION` are under
`employees/`. **Read the training guide before you brief them.** Installing is
the easy half; the guide is how you get work worth acting on rather than
generic advice.

## What is where

| Path | What it is |
|---|---|
| `install.sh` | The installer. Read it before running it, if you like — it is the whole thing. |
| `skills/` | Every skill in any AI Employee, exactly as the installer lays them out, with the COO that knows the whole team. |
| `employees/<key>/` | Each AI Employee's guides. |
| `packs/` | The archives the installer downloads, one per combination of AI Employees. Not for people. |
| `zips/` | One zip per AI Employee, for the Claude website. |
| `digests.json` | The version of each AI Employee in this publish. Quote it if you ask for help. |

## Where this comes from

The skills are authored and improved in Surge's private repositories and
published here whenever they change. The same files are what a member of the
community downloads signed in to Client OS; the two are the same bytes at the
same version. Questions, problems and what you built with them: the community.

Source and publisher: https://github.com/surgeteam01/surge-ai-employees

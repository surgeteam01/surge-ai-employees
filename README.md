# Surge AI Employees

AI Employees for founders: a team of Claude skills, each one a job a founder
already has a name for, with an AI COO as the front door and a Business Brain
that remembers your business so nobody asks you to explain it twice.

**This repository is generated.** Every file in it is published from Surge's
own source by a script, and an edit made here is overwritten by the next
publish. Report a problem in the community instead, or, if you are a developer,
read `install.sh` before you run it — that is what a public repository is for.

## Install inside Claude Code — two lines

If you already use Claude Code, type these into it, one at a time, and confirm
what it asks:

```
/plugin marketplace add surgeteam01/surge-ai-employees
/plugin install all@surge-ai-employees
```

Then type `/reload-plugins` (or start a new session) and ask: **Who do I have on
my team?**

`all` is the whole team. To hire one AI Employee instead, install it by its key,
for example `/plugin install content-marketer@surge-ai-employees`. The keys are
`business-strategist`, `content-marketer`, `growth-and-sales`, `brand-and-product`. The AI COO and the Business Brain (the plugin `ai-coo`) come
with every one. From a terminal, without opening a session, the same two lines
are

```bash
claude plugin marketplace add surgeteam01/surge-ai-employees
claude plugin install all@surge-ai-employees
```

**Updates arrive by themselves once you turn them on:** type `/plugin`, open
**Marketplaces**, choose `surge-ai-employees` and select **Enable auto-update**.
Without it, `/plugin marketplace update surge-ai-employees` fetches what changed.
Each AI Employee updates on its own, and only when its skills change.

A skill installed this way carries its employee's name, such as
`/content-marketer:30-days-of-content`, and Claude also picks the right one by
itself when you say what you want. Adding the marketplace needs `git` on your
computer: on a Mac, if a box offers to install the developer tools, say yes.

**Use one way to install, not both.** The command below copies the same skills
into `~/.claude/skills`, and with both you would have every skill twice.

## Or one command, which installs Claude Code too

You need nothing installed first: if Claude Code is not on your computer yet,
the command installs it too, with Anthropic's own installer.

**Mac** (or Linux, or WSL): open Terminal and paste

```bash
curl -fsSL https://raw.githubusercontent.com/surgeteam01/surge-ai-employees/main/install.sh | bash
```

**Windows**: open Windows PowerShell (the blue one, not Command Prompt) and paste

```powershell
irm https://raw.githubusercontent.com/surgeteam01/surge-ai-employees/main/install.ps1 | iex
```

That installs the whole team. To install one AI Employee, or a few, name them:

```bash
curl -fsSL https://raw.githubusercontent.com/surgeteam01/surge-ai-employees/main/install.sh | bash -s -- content-marketer
curl -fsSL https://raw.githubusercontent.com/surgeteam01/surge-ai-employees/main/install.sh | bash -s -- business-strategist growth-and-sales
```

```powershell
& ([scriptblock]::Create((irm https://raw.githubusercontent.com/surgeteam01/surge-ai-employees/main/install.ps1))) content-marketer
```

The keys are `business-strategist`, `content-marketer`, `growth-and-sales`, `brand-and-product`, or `all`.

`install.sh` also works on Windows under Git Bash. Both put each skill in
`~/.claude/skills`, each AI Employee's training guide in `~/.claude/surge`, and
ask you nothing. No sudo or administrator, nothing left running. To install
into one project only, run it from that project's folder with
`SURGE_SKILLS_DIR=.claude/skills` in front of `bash` (in PowerShell, first
`$env:SURGE_SKILLS_DIR = '.claude\skills'`). To skip installing Claude Code,
set `SURGE_INSTALL_CLAUDE_CODE=0` the same way.

**To update, run the same command again.** It refreshes every AI Employee it
has installed on that machine, keeps anything you changed when the update has
nothing new for it, and when the update changes a file you also changed, it
puts your copy in `~/.claude/surge/backups` first and tells you where.

Then type `claude` in a new window (the first time, it signs you in with your
Claude account in the browser) and ask: **Who do I have on my team?**

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
| **The Business Strategist** | `business-strategist` | Tells you what is actually wrong, and what to fix first. | 10 |
| **The Content Marketer** | `content-marketer` | Fills the calendar, in your voice, without you writing it. | 11 |
| **The Growth & Sales Rep** | `growth-and-sales` | Turns attention into booked calls, and calls into revenue. | 10 |
| **The Brand & Product Builder** | `brand-and-product` | Builds the thing you sell, and makes it look like it is worth the price. | 10 |

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
| `install.sh` | The installer for Mac, Linux and Git Bash. Read it before running it, if you like — it is the whole thing. |
| `install.ps1` | The same installer for Windows PowerShell. |
| `.claude-plugin/marketplace.json` | The plugin marketplace Claude Code reads when you add this repository. |
| `plugins/` | One plugin per AI Employee, `ai-coo` for The AI COO and the Business Brain, and `all` for the whole team. |
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

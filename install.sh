#!/usr/bin/env bash
#
# Surge AI Employees: the one-line installer for Claude Code.
#
# Installs the whole team, or the AI Employees you name after `bash -s --`:
#   curl -fsSL <link> | bash                              every AI Employee
#   curl -fsSL <link> | bash -s -- content-marketer       one, or several
# Everything it downloads is in the repository this script came from, so
# you can read it all first: https://github.com/surgeteam01/surge-ai-employees
#
# What it does, and nothing else:
#   1. downloads the AI Employee skills from the link below;
#   2. puts each skill folder in Claude Code's skills folder, ~/.claude/skills;
#   3. puts each employee's README and training guide in ~/.claude/surge;
#   4. records a sha256 of every file it put there, in ~/.claude/surge/checksums;
#   5. leaves a folder you changed since then where it is, unless this update
#      changes that folder too. Then your copy goes into ~/.claude/surge/backups
#      first, as does any folder in the way that it did not put there itself.
#      It never deletes your own files.
# No sudo, nothing left running, and it asks you nothing.
#
# Running the same command again is how you update. It refreshes every AI
# Employee this installer has put on this machine, not only the one you asked
# for, so the AI COO always knows your whole team.
#
# To install into one project instead of for every project, run it from that
# project's folder as:  curl -fsSL <link> | SURGE_SKILLS_DIR=.claude/skills bash
#
# (This file is generated from .agents/employees/install.sh in surgify-ops and
# published here with the skills. An edit made here is overwritten by the
# next publish; the place to change it is surgify-ops.)

# Piped into sh rather than bash, what follows fails on its first line with an
# error nobody could act on. Say what to do instead, in words sh understands.
if [ -z "${BASH_VERSION:-}" ]; then
  echo "Run this with bash: curl -fsSL <link> | bash" >&2
  exit 1
fi

set -euo pipefail

# Where the download comes from. `api`: one archive made for this command, at
# SURGE_PACK_URL, by the Surge API that checked who is asking. `public`: one
# archive per set of AI Employees, named `<key>_<key>.tar.gz` in roster order
# under SURGE_PACK_URL, published to a repository anybody may read.
SURGE_PACK_MODE='public'
SURGE_PACK_URL='https://raw.githubusercontent.com/surgeteam01/surge-ai-employees/main/packs'
# A fresh command, or the zip for the Claude website (api); the repository (public).
SURGE_HIRE_URL='https://github.com/surgeteam01/surge-ai-employees'
SURGE_EMPLOYEES='business-strategist content-marketer growth-and-sales brand-and-product'
# Every AI Employee there is, in hiring order (public only): what a name after
# `bash -s --` is checked against, and the order an archive's name follows.
SURGE_ROSTER='business-strategist content-marketer growth-and-sales brand-and-product'

if [ -t 1 ]; then
  BOLD=$'\033[1m'; DIM=$'\033[2m'; GREEN=$'\033[32m'; RED=$'\033[31m'; RESET=$'\033[0m'
else
  BOLD=''; DIM=''; GREEN=''; RED=''; RESET=''
fi
SURGE_WORK=''

say() { printf '%s\n' "$*"; }
fail() {
  printf '\n%s  %s%s\n\n' "$RED" "$*" "$RESET" >&2
  if [ "$SURGE_PACK_MODE" = 'public' ]; then
    printf '  The AI Employees repository, with the install guide: %s\n\n' "$SURGE_HIRE_URL" >&2
  else
    printf '  Your AI Employees page: %s\n\n' "$SURGE_HIRE_URL" >&2
  fi
  exit 1
}

# A key or skill folder name, exactly as the pack writes them. Anything else
# in the install record is ignored rather than trusted into a path.
valid_name() {
  case "$1" in
    '' | -* | *[!a-z0-9-]*) return 1 ;;
    *) return 0 ;;
  esac
}

# Is word $1 in the space-separated list $2?
listed() {
  case " $2 " in
    *" $1 "*) return 0 ;;
    *) return 1 ;;
  esac
}

# ~ for the home directory, so the paths printed are the ones people type.
pretty() {
  case "$1" in
    "$HOME"/*) printf '~%s' "${1#"$HOME"}" ;;
    *) printf '%s' "$1" ;;
  esac
}

cleanup() {
  case "$SURGE_WORK" in
    */.surge-install.*) rm -rf "$SURGE_WORK" ;;
  esac
}

# One line per file in folder $1, "<sha256>  $2/<path inside it>", sorted by
# path, which is the format of ~/.claude/surge/checksums. It only reads.
#
# Every file counts, one the founder added included, except the .DS_Store
# Finder writes into every folder it opens. Each file is hashed from stdin, so
# the tool's own quoting of unusual names never reaches the record.
#
# Returns non-zero, meaning "cannot be checked", when this machine has neither
# sha256sum nor shasum, when a file cannot be read, and when the folder holds
# a symlink (or anything else that is neither a file nor a folder) or a name
# with a newline in it. This installer puts none of those there.
checksums_of() {
  local folder="$1" label="$2" hasher odd nl file sum
  if command -v sha256sum >/dev/null 2>&1; then
    hasher='sha256sum'
  elif command -v shasum >/dev/null 2>&1; then
    hasher='shasum -a 256'
  else
    return 1
  fi
  nl=$'\n'
  odd="$(LC_ALL=C find "$folder" \( ! -type d ! -type f \) -o -name "*$nl*" 2>/dev/null)" || return 1
  if [ -n "$odd" ]; then return 1; fi
  LC_ALL=C find "$folder" ! -type d ! -name .DS_Store 2>/dev/null | LC_ALL=C sort | while IFS= read -r file; do
    sum="$( { $hasher < "$file"; } 2>/dev/null )" || exit 1
    sum="${sum%% *}"
    if [ "${#sum}" -ne 64 ]; then exit 1; fi
    printf '%s  %s/%s\n' "$sum" "$label" "${file#"$folder"/}"
  done
}

# The record's lines for label $1, out of the record's text $2.
recorded_lines() {
  printf '%s\n' "$2" | LC_ALL=C awk -v prefix="$1/" 'substr($0, 67, length(prefix)) == prefix'
}

# What to do with folder $2, which an earlier run put here under label $1,
# given the incoming version's lines $3 and the record's lines $4 (either may
# be empty). It only reads. Prints one word:
#   replace     untouched since, or already the incoming version
#   keep        changed since, and this update has nothing new for it
#   both        changed since, and this update changes it too
#   unrecorded  no record of what was put here, and not the incoming version
#   unreadable  it cannot be checked (a symlink inside it, say)
decide() {
  local disk
  if ! disk="$(checksums_of "$2" "$1")"; then
    printf 'unreadable'
  elif [ -n "$3" ] && [ "$disk" = "$3" ]; then
    printf 'replace'
  elif [ -z "$4" ]; then
    printf 'unrecorded'
  elif [ "$disk" = "$4" ]; then
    printf 'replace'
  elif [ "$3" = "$4" ]; then
    printf 'keep'
  else
    printf 'both'
  fi
}

# How a folder is named to the founder: a skill by its folder name, the
# folder of an employee's guides by the employee.
shown() {
  case "$1" in
    surge/*) printf "%s's training guide" "${1#surge/}" ;;
    *) printf '%s' "${1#skills/}" ;;
  esac
}

# Where a folder's earlier copy goes in backup folder $2: a skill under its
# own name, an employee's guides under guides/.
backed_up_at() {
  case "$1" in
    surge/*) printf '%s/guides/%s' "$2" "${1#surge/}" ;;
    *) printf '%s/%s' "$2" "${1#skills/}" ;;
  esac
}

# "a", "a and b", "a, b and c", for the space-separated labels in $1.
spoken() {
  local out='' last='' label
  for label in $1; do
    if [ -n "$last" ]; then out="${out:+$out, }$last"; fi
    last="$(shown "$label")"
  done
  if [ -n "$out" ]; then
    printf '%s and %s' "$out" "$last"
  else
    printf '%s' "$last"
  fi
}

# The whole install is this one function, called on the script's last line,
# so a download cut off halfway runs nothing at all.
main() {
  [ -n "${HOME:-}" ] || fail "HOME is not set, so there is nowhere to install to."
  for tool in curl tar gzip mktemp; do
    command -v "$tool" >/dev/null 2>&1 || fail "This needs '$tool', which is not installed on this machine."
  done
  if [ "$(id -u 2>/dev/null || echo 1)" = "0" ]; then
    say "${DIM}Running as root, so this installs for the root user. Run it without sudo to install for yourself.${RESET}"
  fi

  local claude_dir skills_dir surge_dir record
  claude_dir="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
  skills_dir="${SURGE_SKILLS_DIR:-$claude_dir/skills}"
  case "$skills_dir" in /*) ;; *) skills_dir="$PWD/$skills_dir" ;; esac
  surge_dir="$(dirname "$skills_dir")/surge"
  record="$surge_dir/installed"

  say ""
  say "${BOLD}Surge AI Employees${RESET}"
  say ""

  # What this installer put here before: the employees to keep current, and
  # the skill folders it may replace without a backup while they still match
  # what it recorded putting there.
  local have='' old_skills='' kind value rest
  if [ -f "$record" ]; then
    # `|| [ -n "$kind" ]` keeps a last line that lost its newline.
    while read -r kind value rest || [ -n "$kind" ]; do
      if valid_name "$value"; then
        case "$kind" in
          employee) have="${have:+$have,}$value" ;;
          skill) old_skills="$old_skills $value" ;;
        esac
      fi
    done < "$record"
  fi

  # Public: the AI Employees named after `bash -s --`, else the ones this
  # script was published with. Each is checked against the roster before it
  # can reach a URL, and a name that is not an employee is named back, never
  # fetched. `all` is the whole roster.
  local wanted='' asked key
  if [ "$SURGE_PACK_MODE" = 'public' ]; then
    asked="$SURGE_EMPLOYEES"
    if [ "$#" -gt 0 ]; then asked="$*"; fi
    for key in $asked; do
      if [ "$key" = 'all' ]; then
        wanted="$SURGE_ROSTER"
        break
      fi
      if ! valid_name "$key" || ! listed "$key" "$SURGE_ROSTER"; then
        if valid_name "$key"; then
          fail "\"$key\" is not an AI Employee. Choose from: $SURGE_ROSTER (or all)."
        else
          fail "That is not an AI Employee's name. Choose from: $SURGE_ROSTER (or all)."
        fi
      fi
      if ! listed "$key" "$wanted"; then wanted="$wanted $key"; fi
    done
    SURGE_EMPLOYEES="${wanted# }"
    [ -n "$SURGE_EMPLOYEES" ] || fail "Name at least one AI Employee, or run it with no name for the whole team."
  fi

  # That record: a sha256 of every file the last run put here. With neither
  # sha256sum nor shasum nothing can be checked against it, so it is not read.
  local sums_file hashing='' old_sums=''
  sums_file="$surge_dir/checksums"
  if command -v sha256sum >/dev/null 2>&1 || command -v shasum >/dev/null 2>&1; then
    hashing='yes'
  fi
  if [ -n "$hashing" ] && [ -f "$sums_file" ]; then
    old_sums="$(cat "$sums_file" 2>/dev/null)" || old_sums=''
  fi

  # Beside the skills folder, never inside it, so Claude Code cannot mistake
  # a half-unpacked download for a skill; on the same disk, so every move
  # below is a rename. Nothing else is created until the download is good.
  mkdir -p "$(dirname "$skills_dir")"
  SURGE_WORK="$(mktemp -d "$(dirname "$skills_dir")/.surge-install.XXXXXX")"
  trap cleanup EXIT

  local url status message set_name=''
  if [ "$SURGE_PACK_MODE" = 'public' ]; then
    # The archive for this machine's whole team: the employees asked for and
    # the ones already here, in roster order, so the COO in it knows them all.
    for key in $SURGE_ROSTER; do
      if listed "$key" "$SURGE_EMPLOYEES" || listed "$key" "$(printf '%s' "$have" | tr ',' ' ')"; then
        set_name="${set_name:+${set_name}_}$key"
      fi
    done
    url="$SURGE_PACK_URL/$set_name.tar.gz"
  else
    url="$SURGE_PACK_URL"
    if [ -n "$have" ]; then url="$url?have=$have"; fi
  fi
  say "  Downloading your AI Employees..."
  status="$(curl -sS -L --retry 2 --connect-timeout 15 -o "$SURGE_WORK/pack.tar.gz" -w '%{http_code}' "$url")" \
    || fail "Could not reach Surge to download your AI Employees. Check your connection and run the command again."
  if [ "$status" != "200" ]; then
    if [ "$SURGE_PACK_MODE" = 'public' ]; then
      # A repository host answers with a page, not a sentence, so say what is known.
      fail "No download at $url (HTTP $status). If the AI Employees were updated in the last few minutes, wait and run the command again."
    fi
    # Surge words its own refusals ("your membership is not active", "this
    # command has expired"), and that sentence is the one worth showing.
    message="$(head -c 600 "$SURGE_WORK/pack.tar.gz" 2>/dev/null | tr -d '\r' || true)"
    fail "${message:-The download was refused (HTTP $status).}"
  fi

  mkdir "$SURGE_WORK/pack"
  tar -xzmf "$SURGE_WORK/pack.tar.gz" -C "$SURGE_WORK/pack" 2>/dev/null \
    || fail "The download arrived damaged. Run the command again."
  [ -f "$SURGE_WORK/pack/surge/installed" ] \
    || fail "The download is missing its install record. Run the command again."

  local new_skills='' employees='' version name
  while read -r kind value version name || [ -n "$kind" ]; do
    case "$kind" in
      skill)
        if ! valid_name "$value" || [ ! -f "$SURGE_WORK/pack/skills/$value/SKILL.md" ]; then
          fail "The download is incomplete ($value). Run the command again."
        fi
        new_skills="$new_skills $value"
        ;;
      employee)
        if ! valid_name "$value"; then continue; fi
        if listed "$value" "$SURGE_EMPLOYEES"; then
          employees="$employees${GREEN}✓${RESET} ${BOLD}$name${RESET} ${DIM}installed, pack $version${RESET}"$'\n'
        else
          employees="$employees${GREEN}✓${RESET} ${BOLD}$name${RESET} ${DIM}updated, pack $version${RESET}"$'\n'
        fi
        ;;
    esac
  done < "$SURGE_WORK/pack/surge/installed"
  if [ -z "$new_skills" ]; then fail "The download holds no skills. Run the command again."; fi
  mkdir -p "$skills_dir" "$surge_dir"

  # A record this run can neither check against nor rewrite would be wrong
  # after it, so it goes with the staging folder rather than being trusted.
  if [ -z "$hashing" ] && [ -f "$sums_file" ]; then
    mv "$sums_file" "$SURGE_WORK/checksums-unchecked"
  fi

  # Every folder this run puts in place: each skill folder, and each
  # employee's folder of README, TRAINING and VERSION in the guides folder.
  local labels='' dir employee_dir
  for dir in $new_skills; do labels="$labels skills/$dir"; done
  for employee_dir in "$SURGE_WORK/pack/surge"/*/; do
    key="$(basename "$employee_dir")"
    if valid_name "$key"; then labels="$labels surge/$key"; fi
  done

  # Put each one in place, deciding first what to do with what is there:
  # - untouched since this installer put it there, or already the incoming
  #   version: replaced;
  # - changed since, and this update has nothing new for it: left as it is;
  # - changed since, and this update changes it too: moved into a dated backup
  #   first, then replaced;
  # - not checkable (no record of it yet, no sha256 tool, something inside no
  #   installer puts there): backed up first;
  # - a skill folder this installer did not put there, or a symlink, which is
  #   always the founder's: backed up first.
  # Everything backed up or left is named below. The record keeps Surge's
  # lines for a folder left as the founder changed it, so the next update that
  # does change it still sees the edit.
  local label base target staged parked incoming verdict sums='' backup=''
  local moved='' both='' kept='' unrecorded='' unchecked=''
  for label in $labels; do
    base="${label#*/}"
    case "$label" in
      skills/*) target="$skills_dir/$base"; staged="$SURGE_WORK/pack/skills/$base"; parked="$SURGE_WORK/replaced-$base" ;;
      *) target="$surge_dir/$base"; staged="$SURGE_WORK/pack/surge/$base"; parked="$SURGE_WORK/replaced-docs-$base" ;;
    esac
    incoming=''
    if [ -n "$hashing" ]; then
      incoming="$(checksums_of "$staged" "$label")" || incoming=''
    fi
    if [ -n "$incoming" ]; then sums="$sums$incoming"$'\n'; fi

    if [ -L "$target" ]; then
      verdict='foreign'
    elif [ ! -e "$target" ]; then
      verdict='nothing'
    elif [ "${label%%/*}" = 'skills' ] && ! listed "$base" "$old_skills"; then
      verdict='foreign'
    elif [ -z "$hashing" ]; then
      verdict='unchecked'
    else
      verdict="$(decide "$label" "$target" "$incoming" "$(recorded_lines "$label" "$old_sums")")"
    fi

    case "$verdict" in
      nothing) ;;
      replace) mv "$target" "$parked" ;;
      keep)
        kept="$kept $label"
        continue
        ;;
      *)
        if [ -z "$backup" ]; then backup="$surge_dir/backups/$(date +%Y%m%d-%H%M%S)"; fi
        mkdir -p "$(dirname "$(backed_up_at "$label" "$backup")")"
        mv "$target" "$(backed_up_at "$label" "$backup")"
        case "$verdict" in
          both) both="$both $label" ;;
          unrecorded) unrecorded="$unrecorded $label" ;;
          unchecked) unchecked="$unchecked $label" ;;
          *) moved="$moved $label" ;;
        esac
        ;;
    esac
    if ! mv "$staged" "$target"; then
      if [ -e "$parked" ]; then mv "$parked" "$target" || true; fi
      fail "Could not write $(pretty "$target"). Check you can write to $(pretty "$(dirname "$target")") and run the command again."
    fi
  done
  mv "$SURGE_WORK/pack/surge/installed" "$record"
  if [ -n "$hashing" ]; then
    printf '%s' "$sums" > "$SURGE_WORK/checksums"
    mv "$SURGE_WORK/checksums" "$sums_file"
  fi

  # A skill this installer put here that is no longer in any AI Employee.
  # Left alone: a founder may still be using it, and it is theirs to remove.
  local retired=''
  for dir in $old_skills; do
    if ! listed "$dir" "$new_skills" && [ -e "$skills_dir/$dir" ]; then
      retired="$retired $dir"
    fi
  done

  say ""
  printf '%s' "$employees" | sed 's/^/  /'
  say "    ${DIM}with The AI COO and the Business Brain, which come with every AI Employee.${RESET}"
  say ""
  say "  Skills:          $(pretty "$skills_dir")"
  say "  Training guides: $(pretty "$surge_dir")"
  if [ -n "${CLAUDE_CONFIG_DIR:-}" ] && [ -z "${SURGE_SKILLS_DIR:-}" ]; then
    say "  ${DIM}(CLAUDE_CONFIG_DIR is set, so they went there rather than ~/.claude.)${RESET}"
  fi
  if [ -n "$moved" ]; then
    say ""
    say "  Moved aside first, because this installer did not put them there:"
    for label in $moved; do say "    $(shown "$label")  ->  $(pretty "$(backed_up_at "$label" "$backup")")"; done
  fi
  if [ -n "$both" ]; then
    say ""
    for label in $both; do
      case "$label" in
        skills/*) target="$skills_dir/${label#skills/}" ;;
        *) target="$surge_dir/${label#surge/}" ;;
      esac
      say "  You had changed $(shown "$label"), and this update changes it too. Your version is in $(pretty "$(backed_up_at "$label" "$backup")")"
      say "    ${DIM}To compare: diff -ru $(pretty "$(backed_up_at "$label" "$backup")") $(pretty "$target")${RESET}"
    done
  fi
  if [ -n "$kept" ]; then
    say ""
    say "  Left as you changed them (this update has nothing new for them): $(spoken "$kept")"
  fi
  if [ -n "$unrecorded" ]; then
    say ""
    say "  Kept a copy of $(spoken "$unrecorded") in $(pretty "$backup"):"
    say "  earlier installs did not record what they put here, so this one cannot tell"
    say "  whether you changed them. It will not happen again."
  fi
  if [ -n "$unchecked" ]; then
    say ""
    say "  Kept a copy of every folder an earlier install put here in $(pretty "$backup"), because"
    say "  this machine has neither sha256sum nor shasum to tell whether you changed them."
  fi
  if [ -n "$retired" ]; then
    say ""
    say "  No longer part of your AI Employees, and left where they are:"
    for dir in $retired; do say "    $(pretty "$skills_dir/$dir")  ${DIM}(delete it if you no longer use it)${RESET}"; done
  fi
  say ""
  say "  ${BOLD}Next${RESET}"
  say "    1. Start a new Claude Code session, so it loads the new skills."
  say "    2. Ask it:  Who do I have on my team?"
  say "    3. Then:    Set up my business brain."
  say ""
  local guides=0
  for key in $SURGE_EMPLOYEES; do guides=$((guides + 1)); done
  if [ "$guides" -gt 1 ]; then
    say "  Before you brief them, read their training guides:"
  else
    say "  Before you brief them, read the training guide:"
  fi
  for key in $SURGE_EMPLOYEES; do
    if [ -f "$surge_dir/$key/TRAINING.md" ]; then say "    $(pretty "$surge_dir/$key/TRAINING.md")"; fi
  done
  say ""
  if [ "$SURGE_PACK_MODE" = 'public' ]; then
    say "  ${DIM}To update later, run the same command again. It keeps what you changed."
    say "  This installs for Claude Code. On the Claude website or desktop app, upload the zips from $SURGE_HIRE_URL instead.${RESET}"
  else
    say "  ${DIM}To update later, copy a fresh command from $SURGE_HIRE_URL"
    say "  This installs for Claude Code. On the Claude website or desktop app, download the zip from that page instead.${RESET}"
  fi
  say ""
}

main "$@"

#
# Surge AI Employees: the one-line installer for Windows.
#
# In Windows PowerShell (the blue one, not Command Prompt), paste:
#   irm <link> | iex
# To install only the AI Employees you name:
#   & ([scriptblock]::Create((irm <link>))) content-marketer
# Everything it downloads is in the repository this script came from, so you
# can read it all first: https://github.com/surgeteam01/surge-ai-employees
#
# What it does, and nothing else:
#   0. installs Claude Code with Anthropic's own installer, if it is not
#      installed yet, and makes sure the claude command is on your PATH
#      ($env:SURGE_INSTALL_CLAUDE_CODE = '0' skips this), and the Claude app,
#      Anthropic's per-user package, if it is not installed yet
#      ($env:SURGE_INSTALL_CLAUDE_APP = '0' skips that);
#   1. downloads the AI Employee skills from the link below;
#   2. puts each skill folder in Claude Code's skills folder, ~\.claude\skills;
#   3. puts each employee's README and training guide in ~\.claude\surge;
#   4. records a sha256 of every file it put there, in ~\.claude\surge\checksums;
#   5. leaves a folder you changed since then where it is, unless this update
#      changes that folder too. Then your copy goes into ~\.claude\surge\backups
#      first, as does any folder in the way that it did not put there itself.
#      It never deletes your own files.
# No Git, no administrator, nothing left running, and it asks you nothing.
#
# It is install.sh, the installer for Mac, Linux and Git Bash, said in
# PowerShell, so that Windows needs nothing installed first (P32/I55). The two
# keep the same record in ~\.claude\surge, so either one updates what the
# other installed. Running the same command again is how you update. It
# refreshes every AI Employee this installer has put on this machine, not only
# the one you asked for, so the AI COO always knows your whole team.
#
# To install into one project instead of for every project, run it from that
# project's folder after:  $env:SURGE_SKILLS_DIR = '.claude\skills'
#
# (This file is generated from .agents/employees/install.ps1 in surgify-ops and
# published here with the skills. An edit made here is overwritten by the
# next publish; the place to change it is surgify-ops.)

# The whole install is this one function, called on the script's last line, so
# a download cut off halfway runs nothing at all. It is pasted into the
# founder's own window by `iex`, so it never calls `exit`: that would close the
# window and the reason with it. A failure is said, and the function returns.
function Install-SurgeAiEmployees {
  $SurgePackUrl = 'https://raw.githubusercontent.com/surgeteam01/surge-ai-employees/main/packs'
  $SurgeHireUrl = 'https://github.com/surgeteam01/surge-ai-employees'
  # What the install says to the founder: the title box and the "What to do
  # now" steps. Marketing edits them at /agents/copy/installer/public; each is
  # printable ASCII without quotes, backslashes, backticks or $, held to that
  # before it is written here, so it cannot leave its quotes.
  $SurgeCopyTitle = 'Surge AI Employees'
  $SurgeCopyTagline = 'Your AI team is moving in.'
  $SurgeCopyStepsApp = '1. Open the Claude app on your computer.
   No app yet? Get it at claude.com/download
2. Switch from Chat to Code, and start a new session.
3. Sign in with your paid Claude account, if it asks.
4. Ask:   Who do I have on my team?
5. Then:  {brain}

Prefer the terminal? Open a new window, type  claude'
  $SurgeEmployees = 'business-strategist content-marketer growth-and-sales brand-and-product'
  $SurgeRoster = 'business-strategist content-marketer growth-and-sales brand-and-product'
  $ClaudeCodePs1 = 'https://claude.ai/install.ps1'
  $ClaudeCodePage = 'https://claude.com/product/claude-code'
  $ClaudeAppMsixX64 = 'https://claude.ai/api/desktop/win32/x64/msix/latest/redirect'
  $ClaudeAppMsixArm64 = 'https://claude.ai/api/desktop/win32/arm64/msix/latest/redirect'

  $ErrorActionPreference = 'Stop'
  $ProgressPreference = 'SilentlyContinue'
  $Ok = [char]0x2713
  # Older Windows PowerShell offers TLS 1.0 first, which GitHub refuses.
  try { [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor 3072 } catch { }

  function Say([string]$Text = '', [string]$Color = '') {
    if ($Color) { Write-Host $Text -ForegroundColor $Color } else { Write-Host $Text }
  }

  # A box around plain lines, for the title and for what to do next. Written
  # as character codes, like the tick above: this file reaches the founder as
  # text, and only ASCII survives every way of fetching it.
  $BoxWidth = 60
  $Rule = [string][char]0x2500 * $BoxWidth
  $Bar = [char]0x2502
  function Box([string[]]$Lines) {
    Write-Host ('  ' + [char]0x250C + $Rule + [char]0x2510) -ForegroundColor Cyan
    foreach ($line in $Lines) {
      Write-Host "  $Bar" -ForegroundColor Cyan -NoNewline
      Write-Host ('  ' + $line.PadRight($BoxWidth - 2)) -NoNewline
      Write-Host $Bar -ForegroundColor Cyan
    }
    Write-Host ('  ' + [char]0x2514 + $Rule + [char]0x2518) -ForegroundColor Cyan
  }

  # One step of the install: StepStart says what is happening, StepDone
  # writes a tick over it.
  function Clear-Line {
    $width = 80
    try { $width = [Console]::WindowWidth } catch { }
    Write-Host ("`r" + (' ' * [Math]::Max(1, $width - 1)) + "`r") -NoNewline
  }
  function StepStart([string]$Text) { Write-Host "  $([char]0x00B7) $Text" -ForegroundColor DarkGray -NoNewline }
  function StepDone([string]$Text) {
    Clear-Line
    Write-Host "  $Ok " -ForegroundColor Green -NoNewline
    Write-Host $Text
  }
  # A refusal this script words itself, as opposed to anything else that throws.
  function Fail([string]$Text) { throw [System.InvalidOperationException]::new("SURGE: $Text") }

  # A key or skill folder name, exactly as the pack writes them.
  function Test-ValidName([string]$Name) { return [bool]($Name -cmatch '^[a-z0-9][a-z0-9-]*$') }
  function Test-Listed([string]$Word, [string]$List) { return (" $List " -like "* $Word *") -and $Word -ne '' }
  function Split-Words([string]$List) { return @($List -split '\s+' | Where-Object { $_ -ne '' }) }

  # ~ for the home folder, so the paths printed are the ones people recognise.
  function Pretty([string]$Path) {
    if ($Path.StartsWith("$HOME\", [StringComparison]::OrdinalIgnoreCase)) { return '~' + $Path.Substring($HOME.Length) }
    return $Path
  }

  # One line per file in folder $Folder, "<sha256>  $Label/<path inside it>",
  # sorted by path and joined by "`n": the format of ~\.claude\surge\checksums,
  # byte for byte what install.sh writes, so either installer can check the
  # other's record. Every file counts except Finder's .DS_Store. $null means
  # "cannot be checked": a link inside it, a file that cannot be read, or no
  # file at all. It only reads.
  function Get-Checksums([string]$Folder, [string]$Label) {
    try {
      $root = (Get-Item -LiteralPath $Folder -Force).FullName.TrimEnd('\')
      $paths = New-Object System.Collections.Generic.List[string]
      foreach ($item in @(Get-ChildItem -LiteralPath $root -Recurse -Force)) {
        if ($item.Attributes -band [IO.FileAttributes]::ReparsePoint) { return $null }
        if ($item.PSIsContainer -or $item.Name -eq '.DS_Store') { continue }
        $paths.Add($item.FullName.Substring($root.Length + 1).Replace('\', '/'))
      }
      if ($paths.Count -eq 0) { return $null }
      $sorted = $paths.ToArray()
      [Array]::Sort($sorted, [StringComparer]::Ordinal)
      $lines = foreach ($relative in $sorted) {
        $hash = (Get-FileHash -LiteralPath (Join-Path $root $relative) -Algorithm SHA256).Hash.ToLowerInvariant()
        "$hash  $Label/$relative"
      }
      return (@($lines) -join "`n")
    } catch {
      return $null
    }
  }

  # The record's lines for label $Label, out of the record's lines $Lines.
  function Get-RecordedLines([string]$Label, [string[]]$Lines) {
    $picked = @($Lines | Where-Object { $_.Length -gt 66 -and $_.Substring(66).StartsWith("$Label/", [StringComparison]::Ordinal) })
    return ($picked -join "`n")
  }

  # What to do with folder $Target, which an earlier run put here under
  # $Label, given the incoming version's lines and the record's. As install.sh:
  # replace, keep, both, unrecorded or unreadable.
  function Get-Verdict([string]$Label, [string]$Target, [string]$Incoming, [string]$Recorded) {
    $disk = Get-Checksums $Target $Label
    if ($null -eq $disk) { return 'unreadable' }
    if ($Incoming -and $disk -ceq $Incoming) { return 'replace' }
    if (-not $Recorded) { return 'unrecorded' }
    if ($disk -ceq $Recorded) { return 'replace' }
    if ($Incoming -ceq $Recorded) { return 'keep' }
    return 'both'
  }

  function Get-Shown([string]$Label) {
    if ($Label.StartsWith('surge/')) { return "$($Label.Substring(6))'s training guide" }
    return $Label.Substring($Label.IndexOf('/') + 1)
  }
  function Get-BackedUpAt([string]$Label, [string]$Backup) {
    if ($Label.StartsWith('surge/')) { return Join-Path (Join-Path $Backup 'guides') $Label.Substring(6) }
    return Join-Path $Backup $Label.Substring($Label.IndexOf('/') + 1)
  }
  function Get-Spoken([string[]]$Labels) {
    $names = @($Labels | ForEach-Object { Get-Shown $_ })
    if ($names.Count -le 1) { return ($names -join '') }
    return (($names[0..($names.Count - 2)] -join ', ') + ' and ' + $names[-1])
  }

  # Text with "`n" line ends and no byte-order mark, as install.sh writes it.
  function Write-Lf([string]$Path, [string]$Text) {
    [IO.File]::WriteAllText($Path, $Text, (New-Object System.Text.UTF8Encoding($false)))
  }

  function Find-Claude {
    $exe = Join-Path $HOME '.local\bin\claude.exe'
    if (Test-Path -LiteralPath $exe) { return $exe }
    $command = Get-Command claude -CommandType Application -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($command) { return $command.Source }
    return $null
  }

  # Claude Code is where the AI Employees work, so a founder who does not have
  # it yet gets it here, from Anthropic's own installer, run in a PowerShell of
  # its own: that installer ends with `exit`, which here would close this
  # window. Its words go to a log in $Work, shown only if it fails: they are
  # written for developers ("not in your PATH", which this function then
  # fixes), and the console shows their symbols as noise (a warning sign came out as
  # three box-drawing letters on 12 Oct 2026), since it
  # reads that installer's UTF-8 in the console's own code page. A spinner
  # stands in for them. Already installed: nothing is touched. Returns $true
  # when it installed it.
  # $Command in a PowerShell of its own, its words in $Log, with a spinner
  # beside $Words until it ends. Returns its exit code.
  function Invoke-WithSpinner([string]$Words, [string]$Command, [string]$Log) {
    $setup = "[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor 3072; `$ProgressPreference = 'SilentlyContinue'; "
    $process = Start-Process -FilePath 'powershell.exe' -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"$setup$Command`"" `
      -NoNewWindow -PassThru -RedirectStandardOutput $Log -RedirectStandardError "$Log.err"
    $null = $process.Handle  # without it, Windows PowerShell can lose the exit code
    $frames = '|/-\'
    $i = 0
    while (-not $process.HasExited) {
      Write-Host "`r  " -NoNewline
      Write-Host $frames[$i % 4] -ForegroundColor Cyan -NoNewline
      Write-Host " $Words" -NoNewline
      $i += 1
      Start-Sleep -Milliseconds 200
    }
    $process.WaitForExit()
    Clear-Line
    return $process.ExitCode
  }

  function Install-ClaudeCode([string]$Work) {
    if ($env:SURGE_INSTALL_CLAUDE_CODE -eq '0') { return $false }
    if (Find-Claude) {
      StepDone 'Claude Code is already installed.'
      return $false
    }
    $log = Join-Path $Work 'claude-code-install.log'
    $code = Invoke-WithSpinner 'Installing Claude Code first (a minute or two)...' "irm $ClaudeCodePs1 | iex" $log
    if ($code -ne 0) {
      Say "  What Claude Code's installer said:" DarkGray
      foreach ($file in @($log, "$log.err")) {
        if (Test-Path -LiteralPath $file) { Get-Content -LiteralPath $file -Tail 15 | ForEach-Object { Say "    $_" DarkGray } }
      }
      Fail "Claude Code did not install. Install it from $ClaudeCodePage, then run this command again."
    }
    $claude = Find-Claude
    if (-not $claude) { Fail "Claude Code's installer finished, but there is no claude command. Install it from $ClaudeCodePage, then run this command again." }
    $version = ''
    try {
      $ErrorActionPreference = 'Continue'
      $version = ((& $claude --version 2>$null) | Select-Object -First 1) -replace '\s.*$', ''
    } catch { } finally { $ErrorActionPreference = 'Stop' }
    if ($version) { StepDone "Claude Code installed ($version)" } else { StepDone 'Claude Code installed' }

    # The claude command, in this window and in every new one. This window:
    # $env:Path, which `iex` lets this script change. New windows: the user's
    # own Path in the registry, read and written unexpanded so an entry like
    # %USERPROFILE%\bin keeps working; setting a variable through .NET
    # afterwards is what tells Windows that the environment changed.
    $bin = Join-Path $HOME '.local\bin'
    if (Test-Path -LiteralPath (Join-Path $bin 'claude.exe')) {
      if (-not (($env:Path -split ';') -contains $bin)) { $env:Path = "$bin;$env:Path" }
      try {
        $key = [Microsoft.Win32.Registry]::CurrentUser.OpenSubKey('Environment', $true)
        $userPath = [string]$key.GetValue('Path', '', [Microsoft.Win32.RegistryValueOptions]::DoNotExpandEnvironmentNames)
        $entries = @($userPath -split ';' | Where-Object { $_ -ne '' })
        $known = $entries | Where-Object { [Environment]::ExpandEnvironmentVariables($_).TrimEnd('\') -ieq $bin }
        if (-not $known) {
          $key.SetValue('Path', ((@($entries) + $bin) -join ';'), [Microsoft.Win32.RegistryValueKind]::ExpandString)
          [Environment]::SetEnvironmentVariable('SURGE_INSTALLER', '1', 'User')
          [Environment]::SetEnvironmentVariable('SURGE_INSTALLER', $null, 'User')
        }
        $key.Close()
      } catch {
        Say "  Could not add $(Pretty $bin) to your Path. If claude is not found in a new window, add it yourself." DarkGray
      }
    }
    return $true
  }

  # The Claude app, which is where "What to do now" sends a founder: its Code
  # tab is Claude Code, reading the same skills folder. Installed when it is
  # not there yet, from Anthropic's per-user package, which needs no
  # administrator (their full installer asks for one, for Cowork), and never
  # updated here (it updates itself). When the package will not go on (a
  # policy that blocks packages, an elevated window under another account),
  # winget is the second try: Anthropic.Claude is the full installer, which
  # may ask for an administrator. A failure says why and the install goes
  # on, because the terminal works without the app.
  function Test-ClaudeApp {
    $installed = $null
    try { $installed = Get-AppxPackage -Name 'Claude' -ErrorAction SilentlyContinue } catch { }
    return [bool]($installed -or (Test-Path -LiteralPath (Join-Path $env:LOCALAPPDATA 'AnthropicClaude')))
  }

  function Install-ClaudeApp([string]$Work) {
    if ($env:SURGE_INSTALL_CLAUDE_APP -eq '0') { return }
    if (Test-ClaudeApp) {
      StepDone 'The Claude app is already installed.'
      return
    }
    $url = if ($env:PROCESSOR_ARCHITECTURE -eq 'ARM64') { $ClaudeAppMsixArm64 } else { $ClaudeAppMsixX64 }
    # Doubled quotes: how a single-quoted PowerShell string holds one, for a
    # home folder like C:\Users\O'Brien.
    $package = (Join-Path $Work 'Claude.msix').Replace("'", "''")
    $command = "`$ErrorActionPreference = 'Stop'; Invoke-WebRequest -UseBasicParsing -Uri '$url' -OutFile '$package'; Add-AppxPackage -Path '$package'"
    $msixLog = Join-Path $Work 'claude-app-install.log'
    $code = Invoke-WithSpinner 'Installing the Claude app (a minute or two)...' $command $msixLog
    if ($code -eq 0 -and (Test-ClaudeApp)) {
      StepDone 'Claude app installed'
      return
    }
    $logs = @($msixLog, "$msixLog.err")
    if (Get-Command winget -ErrorAction SilentlyContinue) {
      # Exit codes are not trusted on their own: winget answers "already
      # installed" and "no newer version" with failures, so the app is looked
      # for afterwards instead.
      $wingetLog = Join-Path $Work 'claude-app-winget.log'
      $winget = 'winget install --id Anthropic.Claude --exact --silent --accept-package-agreements --accept-source-agreements --disable-interactivity; exit $LASTEXITCODE'
      $null = Invoke-WithSpinner 'Trying again with winget (a minute or two)...' $winget $wingetLog
      if (Test-ClaudeApp) {
        StepDone 'Claude app installed (with winget)'
        return
      }
      $logs += @($wingetLog, "$wingetLog.err")
    }
    Say '  Could not install the Claude app. Get it at claude.com/download' DarkGray
    Say '  What the installer said:' DarkGray
    # An error's first lines say what went wrong; winget's last lines do.
    foreach ($file in $logs) {
      if (-not (Test-Path -LiteralPath $file)) { continue }
      $lines = @(Get-Content -LiteralPath $file | Where-Object { $_.Trim() -ne '' })
      $shown = if ($file -like '*.err') { $lines | Select-Object -First 2 } else { $lines | Select-Object -Last 3 }
      $shown | ForEach-Object { Say "    $_" DarkGray }
    }
  }

  $work = $null
  try {
    if (-not $HOME) { Fail 'There is no home folder to install to.' }
    $tar = Join-Path $env:SystemRoot 'System32\tar.exe'
    if (-not (Test-Path -LiteralPath $tar)) { Fail 'This needs tar.exe, which comes with Windows 10 (version 1803) and later. Update Windows, then run this command again.' }

    $claudeDir = if ($env:CLAUDE_CONFIG_DIR) { $env:CLAUDE_CONFIG_DIR } else { Join-Path $HOME '.claude' }
    $skillsDir = if ($env:SURGE_SKILLS_DIR) { $env:SURGE_SKILLS_DIR } else { Join-Path $claudeDir 'skills' }
    if (-not [IO.Path]::IsPathRooted($skillsDir)) { $skillsDir = Join-Path (Get-Location).ProviderPath $skillsDir }
    $skillsDir = [IO.Path]::GetFullPath($skillsDir).TrimEnd('\')
    $parent = Split-Path -Parent $skillsDir
    $surgeDir = Join-Path $parent 'surge'
    $record = Join-Path $surgeDir 'installed'

    Say ''
    Box @($SurgeCopyTitle, $SurgeCopyTagline)
    Say ''

    # What this installer put here before: the employees to keep current, and
    # the skill folders it may replace without a backup while they still match.
    $have = @(); $oldSkills = @()
    if (Test-Path -LiteralPath $record -PathType Leaf) {
      foreach ($line in [IO.File]::ReadAllLines($record)) {
        $parts = @($line.Trim() -split '\s+')
        if ($parts.Count -lt 2 -or -not (Test-ValidName $parts[1])) { continue }
        if ($parts[0] -ceq 'employee') { $have += $parts[1] }
        elseif ($parts[0] -ceq 'skill') { $oldSkills += $parts[1] }
      }
    }

    # The AI Employees named after the command, else every one. Each is
    # checked against the roster before it can reach a URL. `all` is the roster.
    $wanted = @()
    $asked = if ($args.Count -gt 0) { @($args | ForEach-Object { [string]$_ }) } else { Split-Words $SurgeEmployees }
    foreach ($key in $asked) {
      if ($key -ceq 'all') { $wanted = Split-Words $SurgeRoster; break }
      if (-not (Test-ValidName $key) -or -not (Test-Listed $key $SurgeRoster)) {
        if (Test-ValidName $key) { Fail "`"$key`" is not an AI Employee. Choose from: $SurgeRoster (or all)." }
        Fail "That is not an AI Employee's name. Choose from: $SurgeRoster (or all)."
      }
      if (-not ($wanted -ccontains $key)) { $wanted += $key }
    }
    if ($wanted.Count -eq 0) { Fail 'Name at least one AI Employee, or run it with no name for the whole team.' }
    $SurgeEmployees = $wanted -join ' '

    $sumsFile = Join-Path $surgeDir 'checksums'
    $oldSums = @()
    if (Test-Path -LiteralPath $sumsFile -PathType Leaf) {
      try { $oldSums = @([IO.File]::ReadAllText($sumsFile) -split "`n" | Where-Object { $_ -ne '' }) } catch { $oldSums = @() }
    }

    # Beside the skills folder, never inside it, so Claude Code cannot mistake
    # a half-unpacked download for a skill; on the same disk, so every move
    # below is a rename.
    New-Item -ItemType Directory -Force -Path $parent | Out-Null
    $work = Join-Path $parent ('.surge-install.' + [IO.Path]::GetRandomFileName().Replace('.', ''))
    New-Item -ItemType Directory -Path $work | Out-Null

    # After the names are checked, so a typo costs nothing; after the staging
    # folder exists, which is where Claude Code's installer writes its log.
    $null = Install-ClaudeCode $work
    Install-ClaudeApp $work

    # The archive for this machine's whole team, in roster order.
    $setName = @(Split-Words $SurgeRoster | Where-Object { ($wanted -ccontains $_) -or ($have -ccontains $_) }) -join '_'
    $url = "$SurgePackUrl/$setName.tar.gz"
    $archive = Join-Path $work 'pack.tar.gz'
    StepStart 'Downloading your AI Employees...'
    try {
      Invoke-WebRequest -UseBasicParsing -Uri $url -OutFile $archive -TimeoutSec 120
    } catch {
      $response = $_.Exception.Response
      if ($response) {
        Fail "No download at $url (HTTP $([int]$response.StatusCode)). If the AI Employees were updated in the last few minutes, wait and run the command again."
      }
      Fail 'Could not reach Surge to download your AI Employees. Check your connection and run the command again.'
    }

    StepDone 'Downloaded your AI Employees'
    StepStart 'Unpacking and checking every file...'
    $pack = Join-Path $work 'pack'
    New-Item -ItemType Directory -Path $pack | Out-Null
    $ErrorActionPreference = 'Continue'
    & $tar -xzmf $archive -C $pack 2>&1 | Out-Null
    $code = $LASTEXITCODE
    $ErrorActionPreference = 'Stop'
    if ($code -ne 0) { Fail 'The download arrived damaged. Run the command again.' }
    $packRecord = Join-Path $pack 'surge\installed'
    if (-not (Test-Path -LiteralPath $packRecord -PathType Leaf)) { Fail 'The download is missing its install record. Run the command again.' }

    $newSkills = @(); $employees = @()
    foreach ($line in [IO.File]::ReadAllLines($packRecord)) {
      $parts = @($line.Trim() -split '\s+', 4)
      if ($parts[0] -ceq 'skill') {
        if ($parts.Count -lt 2 -or -not (Test-ValidName $parts[1]) -or -not (Test-Path -LiteralPath (Join-Path $pack "skills\$($parts[1])\SKILL.md") -PathType Leaf)) {
          Fail "The download is incomplete ($($parts[1])). Run the command again."
        }
        $newSkills += $parts[1]
      } elseif ($parts[0] -ceq 'employee' -and $parts.Count -ge 4 -and (Test-ValidName $parts[1])) {
        $how = if ($wanted -ccontains $parts[1]) { 'installed' } else { 'updated' }
        $employees += , @($parts[3], "$how, pack $($parts[2])")
      }
    }
    if ($newSkills.Count -eq 0) { Fail 'The download holds no skills. Run the command again.' }
    New-Item -ItemType Directory -Force -Path $skillsDir, $surgeDir | Out-Null

    # Every folder this run puts in place: each skill folder, and each
    # employee's folder of README, TRAINING and VERSION.
    $labels = @($newSkills | ForEach-Object { "skills/$_" })
    foreach ($dir in @(Get-ChildItem -LiteralPath (Join-Path $pack 'surge') -Directory -Force)) {
      if (Test-ValidName $dir.Name) { $labels += "surge/$($dir.Name)" }
    }

    # Put each one in place, deciding first what to do with what is there,
    # exactly as install.sh does; its comments say why.
    $sums = New-Object System.Text.StringBuilder
    $backup = $null
    $moved = @(); $both = @(); $kept = @(); $unrecorded = @()
    foreach ($label in $labels) {
      $base = $label.Substring($label.IndexOf('/') + 1)
      if ($label.StartsWith('skills/')) {
        $target = Join-Path $skillsDir $base; $staged = Join-Path $pack "skills\$base"; $parked = Join-Path $work "replaced-$base"
      } else {
        $target = Join-Path $surgeDir $base; $staged = Join-Path $pack "surge\$base"; $parked = Join-Path $work "replaced-docs-$base"
      }
      $incoming = Get-Checksums $staged $label
      if ($incoming) { [void]$sums.Append($incoming).Append("`n") }

      $item = Get-Item -LiteralPath $target -Force -ErrorAction SilentlyContinue
      if ($item -and ($item.Attributes -band [IO.FileAttributes]::ReparsePoint)) { $verdict = 'foreign' }
      elseif (-not $item) { $verdict = 'nothing' }
      elseif ($label.StartsWith('skills/') -and -not ($oldSkills -ccontains $base)) { $verdict = 'foreign' }
      else { $verdict = Get-Verdict $label $target $incoming (Get-RecordedLines $label $oldSums) }

      try {
        switch ($verdict) {
          'nothing' { }
          'replace' { Move-Item -LiteralPath $target -Destination $parked }
          'keep' { $kept += $label }
          default {
            if (-not $backup) { $backup = Join-Path $surgeDir ('backups\' + (Get-Date -Format 'yyyyMMdd-HHmmss')) }
            $at = Get-BackedUpAt $label $backup
            New-Item -ItemType Directory -Force -Path (Split-Path -Parent $at) | Out-Null
            Move-Item -LiteralPath $target -Destination $at
            switch ($verdict) {
              'both' { $both += $label }
              'unrecorded' { $unrecorded += $label }
              default { $moved += $label }
            }
          }
        }
        if ($verdict -ne 'keep') { Move-Item -LiteralPath $staged -Destination $target }
      } catch {
        if ((Test-Path -LiteralPath $parked) -and -not (Test-Path -LiteralPath $target)) {
          try { Move-Item -LiteralPath $parked -Destination $target } catch { }
        }
        Fail "Could not write $(Pretty $target). If Claude Code is open, close it, then run the command again."
      }
    }
    Move-Item -LiteralPath $packRecord -Destination $record -Force
    $sumsStaged = Join-Path $work 'checksums'
    Write-Lf $sumsStaged $sums.ToString()
    Move-Item -LiteralPath $sumsStaged -Destination $sumsFile -Force

    # A skill this installer put here that is no longer in any AI Employee.
    # Left alone: a founder may still be using it, and it is theirs to remove.
    $retired = @($oldSkills | Where-Object { -not ($newSkills -ccontains $_) -and (Test-Path -LiteralPath (Join-Path $skillsDir $_)) })

    StepDone "Moved them in: $($newSkills.Count) skills, every file checked"

    Say ''
    Say '  Your team' White
    foreach ($employee in $employees) {
      Write-Host "    $Ok " -ForegroundColor Green -NoNewline
      Write-Host $employee[0] -ForegroundColor White -NoNewline
      Write-Host " $($employee[1])" -ForegroundColor DarkGray
    }
    Write-Host '    + ' -ForegroundColor Cyan -NoNewline
    Write-Host 'The AI COO and the Business Brain, who come with every AI Employee' -ForegroundColor DarkGray
    Say ''
    Say "  Skills:          $(Pretty $skillsDir)" DarkGray
    Say "  Training guides: $(Pretty $surgeDir)" DarkGray
    if ($moved.Count -gt 0) {
      Say ''
      Say '  Moved aside first, because this installer did not put them there:'
      foreach ($label in $moved) { Say "    $(Get-Shown $label)  ->  $(Pretty (Get-BackedUpAt $label $backup))" }
    }
    foreach ($label in $both) {
      Say ''
      Say "  You had changed $(Get-Shown $label), and this update changes it too. Your version is in $(Pretty (Get-BackedUpAt $label $backup))"
    }
    if ($kept.Count -gt 0) {
      Say ''
      Say "  Left as you changed them (this update has nothing new for them): $(Get-Spoken $kept)"
    }
    if ($unrecorded.Count -gt 0) {
      Say ''
      Say "  Kept a copy of $(Get-Spoken $unrecorded) in $(Pretty $backup):"
      Say '  earlier installs did not record what they put here, so this one cannot tell'
      Say '  whether you changed them. It will not happen again.'
    }
    if ($retired.Count -gt 0) {
      Say ''
      Say '  No longer part of your AI Employees, and left where they are:'
      foreach ($dir in $retired) { Say "    $(Pretty (Join-Path $skillsDir $dir))  (delete it if you no longer use it)" }
    }
    Say ''
    Say '  What to do now' White
    # A founder on Windows works in the Claude app, which runs Claude Code
    # under its Code tab and reads the same skills folder. The words are
    # marketing's, one line per line of the box, {brain} standing for the
    # business-brain prompt.
    Box @($SurgeCopyStepsApp -split "`n" | ForEach-Object { $_.Replace('{brain}', 'Set up my business brain.') })
    Say ''
    if ($wanted.Count -gt 1) { Say '  Before you brief them, read their training guides:' } else { Say '  Before you brief them, read the training guide:' }
    foreach ($key in $wanted) {
      $guide = Join-Path $surgeDir "$key\TRAINING.md"
      if (Test-Path -LiteralPath $guide) { Say "    $(Pretty $guide)" }
    }
    Say ''
    Say '  To update later, run the same command again. It keeps what you changed.' DarkGray
    Say "  This installs for Claude Code. For Chat on the Claude website or app, upload the zips from $SurgeHireUrl instead." DarkGray
    Say ''
  } catch {
    $message = $_.Exception.Message
    Say ''
    if ($message.StartsWith('SURGE: ')) {
      Say "  $($message.Substring(7))" Red
    } else {
      Say "  Something went wrong: $message" Red
      Say '  Run the command again. If it happens again, post this message in the community.' Red
    }
    Say ''
    Say "  The AI Employees repository, with the install guide: $SurgeHireUrl"
    Say ''
  } finally {
    if ($work -and (Split-Path -Leaf $work).StartsWith('.surge-install.')) {
      Remove-Item -LiteralPath $work -Recurse -Force -ErrorAction SilentlyContinue
    }
  }
}

Install-SurgeAiEmployees @args

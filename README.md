# Simon Says

Playground rules for predictable AI builders.

AI builders repeat the same failures: drifting from a build order, adding features nobody requested, missing hidden defects, testing only the obvious path, losing alignment with the user, and writing far more than the job needs. Simon Says gives those problems memorable names and fixed procedures.

The names are playful. The behavior is testable.

## Flagship behavior

Simon Says has two explicit modes:

- Execute: follow a supplied build order exactly, in order, without inferred requirements or substituted architecture.
- Route: select the one bundled skill whose childhood rule best matches the current problem.

Example:

    $simon-says execute BUILD_ORDER.md exactly as written

## Skill catalog

| Skill | Childhood rule | Builder problem | Enforced behavior |
| --- | --- | --- | --- |
| [Simon Says](skills/simon-says/) | Do only what Simon says | Scope drift | Execute the authoritative order exactly or route explicitly |
| [K.I.S.S.](skills/kiss/) | Keep it simple | Bloat | Produce the minimum sufficient code or communication |
| [M.I.S.S.](skills/miss/) | Make it super smart | Shallow analysis | Investigate deeply without expanding scope |
| [Hide and Seek](skills/hide-and-seek/) | Find what is concealed | Hidden defects | Search beyond the visible failure and prove every finding |
| [Red Rover](skills/red-rover/) | Try to cross the line | Weak boundaries | Send controlled adversarial cases at one authorized boundary |
| [Battleship](skills/battleship/) | Probe without seeing the board | Unknown failures | Run black-box tests before inspecting implementation details |
| [Chutes and Ladders](skills/chutes-and-ladders/) | Some paths advance; others drag | Bottlenecks | Identify measured fast paths, ceilings, and regressions |
| [Recess](skills/recess/) | One supervised free choice | Missed opportunity | Propose one optional improvement and wait for approval |
| [Dodgeball](skills/dodgeball/) | A coordinated volley from many angles | Race and load failures | Coordinate safe sequential and concurrent test volleys |
| [Sand Castles](skills/sand-castles/) | Build where failure is harmless | Risky experiments | Create a disposable sandbox with isolation and teardown |
| [Double Dutch](skills/double-dutch/) | Enter without breaking the rhythm | Workflow insertion | Find the safest branch or handoff point |
| [Etch A Sketch](skills/etch-a-sketch/) | Draw, inspect, shake clean, redraw | UI ideas trapped in prose or endlessly patched drafts | Render a disposable UI and let only an approved sketch graduate |
| [Patty Cake](skills/patty-cake/) | Stay in sync | User-agent drift | Compare instructions, plan, and work; stop on material mismatch |
| [Go Fish](skills/go-fish/) | Ask for the exact card | Code-location searches | Locate an exact line, symbol, file, or behavior without editing |
| [Heads Up Seven Up](skills/heads-up-seven-up/) | Judge without relying on appearances | Unsafe inputs | Classify inputs by provenance and behavior, not surface form |
| [Hungry Hippos](skills/hungry-hippos/) | Find what is consuming everything | Memory and data leaks | Measure where resources grow, remain retained, or disappear |

## Use

Codex uses dollar mentions:

    $hide-and-seek inspect the authentication flow for hidden failure paths

ChatGPT supports at-mentions when the skill is installed:

    @hide-and-seek inspect the authentication flow for hidden failure paths

Most skills are intentionally explicit-invocation only. They should change the work only when the user chooses the game.

## Install

Skills install into the host application, not into GPT, Claude, or DeepSeek model weights.

The no-dependency installer works on Windows, macOS, and Linux.

Install the complete collection for every Codex project:

    python scripts/install.py --host codex --scope user

Install only the router:

    python scripts/install.py --host codex --scope user --skill simon-says

Install into one Codex project:

    python scripts/install.py --host codex --scope project --project PATH_TO_PROJECT

Install for every Claude Code project:

    python scripts/install.py --host claude-code --scope user

Use a DeepSeek-powered or other Agent Skills-compatible host by naming the folder it scans:

    python scripts/install.py --host custom --destination PATH_TO_SKILLS

Add `--dry-run` to preview the copy. Existing skill folders are protected unless `--force` is explicit. Run `python scripts/install.py --list` to see the names available for selective installation.

Once this repository is public, Codex users can also ask `$skill-installer` to install skills from `https://github.com/jawsublime-byte/simon-says`.

The included `.codex-plugin/plugin.json` packages the complete collection for ChatGPT Work, the ChatGPT desktop app, and Codex plugin distribution. A local filesystem installer cannot inject a plugin into hosted ChatGPT; use that product's plugin installation flow after publication.

## Safety

Adversarial skills are for defensive testing of systems the user owns or is authorized to assess. They do not authorize destructive payloads, credential theft, persistence, evasion, or attacks against third parties. Sandboxes must not contain production secrets or irreplaceable data.

All skills yield to higher-level safety rules, repository policy, permission limits, and explicit approval gates.

## Validate

Run:

    python scripts/validate_repo.py

The validator checks every skill's name, frontmatter, UI metadata, evaluation coverage, plugin manifest, and unresolved placeholders.

## Contributing

Read CONTRIBUTING.md before proposing a game. Every new skill must map one familiar rule to one recurring builder problem and include both trigger and non-trigger evaluations.

## License

MIT. See LICENSE.

This project uses familiar playground language as a mnemonic system. It is not affiliated with a game publisher.

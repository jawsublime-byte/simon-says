<p align="center">
  <img src="assets/schoolyard-hero.jpg" alt="Children playing together across a busy schoolyard" width="100%">
</p>

# Simon Says

**Playground rules for predictable AI builders.**

AI builders repeat the same failures: drifting from a build order, adding features nobody requested, missing hidden defects, testing only the obvious path, losing alignment with the user, and writing far more than the job needs. Simon Says turns those recurring failures into memorable, explicit procedures.

The names are playful. The behavior is testable.

> **Companion collection:** Simon Says and [Mother Goose](https://github.com/jawsublime-byte/mother-goose) are two halves of the same idea. Simon Says focuses mostly on execution, control, investigation, and keeping an agent inside the job it was given. Mother Goose focuses on recurring repair, resilience, elimination, timing, and balance problems. If one collection is useful to you, I recommend cloning the other too.

## Why I built this

I'm Joe. I'm an online English teacher, not a software company, and I started building these skills because I needed them in my own AI-assisted projects.

A couple of months ago I thought I was reaching the home stretch of a project I had spent close to a year building. Then I looked behind the curtain.

From a distance the project looked healthy: folders, manifests, source files, tests, documentation, polished explanations. Up close, it looked like a condemned building being held together with spit and tape. Complete systems had become partial systems. Working code had quietly turned into scaffolds, stubs, placeholders, summaries, or cleaner-looking abstractions that no longer contained the original behavior. Documentation described features whose implementations were missing. Pieces I believed were preserved had disappeared.

The worst part was that none of it necessarily looked reckless while it was happening. An AI agent can reinterpret deletion as cleanup, simplification, modernization, deduplication, or architectural improvement. It can make a destructive decision and explain it in perfectly professional language.

I eventually realized that the problem was bigger than "AI makes mistakes." The real problem was **authority**. A model could act at machine speed, change many files before the mistake became obvious, sound confident while operating from a false premise, and make architectural decisions I had never actually authorized.

So I started over.

But I did not start from zero. I had a year of failures, wrong turns, missing requirements, overbuilt solutions, bad repair loops, hidden defects, context loss, and model drift to learn from. I started turning those recurring problems into small controls I could invoke deliberately.

That became Simon Says.

I still use AI heavily. I just no longer confuse **capability** with **authority**. The model can investigate, propose, test, and implement inside a defined boundary. It does not get to quietly decide what the project was supposed to become.

## Start here: Patty Cake

If you try only one skill in this collection, I would start with [**Patty Cake**](skills/patty-cake/).

Patty Cake began as a simple alignment checkpoint: freeze the latest explicit directive, compare it with the active plan and the work actually performed, then classify every requirement as **matched, drifted, missing, blocked, or unknown**.

In practice it has become one of my most-used controls. I run it after major build sections even when everything appears fine. It has caught things like:

- a section of the build order that was quietly skipped;
- an "improvement" the model added even though the prompt never authorized it;
- a changed interpretation of a requirement midway through implementation;
- testing that proved the model's new version instead of the version I actually requested;
- work that looked complete until the original directive and changed files were compared side by side.

The important behavior is that Patty Cake **stops on material drift instead of silently fixing its own interpretation and continuing**. The decision comes back to the user.

That sounds small. For me, it changed the way I build. It gave me a reliable moment to ask:

**Before we continue, prove that we are still building what I asked for.**

Example:

    $patty-cake check alignment before we continue

In ChatGPT when installed:

    @patty-cake check alignment before we continue

## Flagship behavior

Simon Says itself has two explicit modes:

- **Execute:** follow a supplied build order exactly, in order, without inferred requirements or substituted architecture.
- **Route:** select the one bundled skill whose childhood rule best matches the current problem.

Example:

    $simon-says execute BUILD_ORDER.md exactly as written

<p align="center">
  <img src="assets/schoolyard-follow.jpg" alt="Children following one leader's directions in the schoolyard" width="76%">
</p>

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
| [Teacher's Pet](skills/teachers-pet/) | Check the approved textbook | Uncertain Rust or Cargo decisions | Retrieve bounded, integrity-verified evidence from the approved local manuals |
| [Rock 'Em Sock 'Em](skills/rock-em-sock-em/) | Two ideas enter; evidence decides what survives | Convention bias during unconventional brainstorming | Preserve both positions, withdraw defeated objections, and use evidence or tests to decide |
| [Perfection](skills/perfection/) | Fill every required shape before the board pops | Unrecognized required omissions | Prove missing pieces are necessary, fill only the exact shape, and reject speculative scope |
| [Life](skills/life/) | Make the program survive a full life | Long-term aging, bloat, and performance decay | Simulate realistic accumulated use and find where trusted software deteriorates over time |
| [Referee](skills/referee/) | Enforce the rules of play | Repeated builder drift | Issue evidenced yellow cards, substitute on red, reinstate on probation, and expel repeat offenders |

## Why skills instead of "just be careful"?

Broad instructions like "follow the plan," "check your work," "don't overengineer," and "be careful" sound sensible, but a model can agree with all of them and violate all of them five minutes later.

A skill turns an abstract expectation into a named procedure with a beginning, an end, and observable behavior.

- **Simon Says**: do only what the authoritative build order says.
- **Hide and Seek**: do not repair the first visible symptom and declare victory.
- **Battleship**: test from the outside before reading the implementation and rationalizing what it was intended to do.
- **K.I.S.S.**: build the minimum sufficient solution rather than burying the requirement under abstractions and speculative extension points.
- **Patty Cake**: compare the directive, plan, work, and claimed result before moving on.

The names are mnemonics. The procedures are the point.

## Use

Codex uses dollar mentions:

    $hide-and-seek inspect the authentication flow for hidden failure paths

ChatGPT supports at-mentions when the skill is installed:

    @hide-and-seek inspect the authentication flow for hidden failure paths

Most skills are intentionally explicit-invocation only. They should change the work only when **you** choose the game.

<p align="center">
  <img src="assets/schoolyard-pressure.jpg" alt="Children testing a human chain together in the schoolyard" width="76%">
</p>

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

Codex users can also ask `$skill-installer` to install skills from `https://github.com/jawsublime-byte/simon-says`.

The included `.codex-plugin/plugin.json` packages the complete collection for ChatGPT Work, the ChatGPT desktop app, and Codex plugin distribution. A local filesystem installer cannot inject a plugin into hosted ChatGPT; use that product's plugin installation flow after publication.

## Free on purpose

These skills are open source because I am still the same solo builder who needed them in the first place.

There is no premium version of Patty Cake waiting behind a paywall. If one of these small controls saves another builder from losing a day, a week, or a piece of a project, I would rather they have it.

Use them. Fork them. Improve them. Adapt them to your own workflow.

## Did one of these actually help you?

This is the part I cannot learn from GitHub clone counts.

If a skill caught something in a real build, [open an issue and tell me what happened](https://github.com/jawsublime-byte/simon-says/issues/new). It does not need to be formal. A few useful details are enough:

- which skill you used;
- what model or host you used it with;
- what problem it caught or prevented;
- whether the procedure was clear;
- what you would change.

I especially want to hear the failures. If a skill was confusing, triggered at the wrong time, missed something obvious, or made the workflow worse, that is useful information too.

If these tools earn a permanent place in your workflow, **please star the repository**. It helps other builders find the collection and gives me some signal that the work is useful outside my own projects.

## Safety

Adversarial skills are for defensive testing of systems the user owns or is authorized to assess. They do not authorize destructive payloads, credential theft, persistence, evasion, or attacks against third parties. Sandboxes must not contain production secrets or irreplaceable data.

All skills yield to higher-level safety rules, repository policy, permission limits, and explicit approval gates.

<p align="center">
  <img src="assets/schoolyard-create.jpg" alt="Children coordinating a jumping rhythm, working in sync, and building in a sandbox" width="100%">
</p>

## Validate

Run:

    python scripts/validate_repo.py

The validator checks every skill's name, frontmatter, UI metadata, evaluation coverage, plugin manifest, and unresolved placeholders.

## Contributing

Read CONTRIBUTING.md before proposing a game. Every new skill must map one familiar rule to one recurring builder problem and include both trigger and non-trigger evaluations.

If you have a recurring AI-builder failure that does not have a game yet, I am interested in that too. The collection grew by naming problems I kept encountering and forcing myself to define a procedure instead of merely complaining about the model.

## From the builder

I'm Joe, an online English teacher who fell very far down the AI-assisted software-building rabbit hole. I build practical, local-first tools because I want ordinary people and solo builders to have more control over the systems they use.

I do not have a giant development team behind these repositories. Most of this came from getting burned, figuring out why, building a control for it, and testing whether that control made the next build better.

On the workbench:

- **[Mother Goose](https://github.com/jawsublime-byte/mother-goose)** — the companion collection for recurring repair, resilience, elimination, timing, and balance problems.
- **Echoes** — local-first archive archaeology, project reconstruction, and timeline recovery.
- **The MCP Workshop Manual** — a field-repair reference for diagnosing and repairing MCP infrastructure.

The public skills will remain free and open source. I am still building the larger systems these lessons have led me toward, and I would much rather build them while talking to other people dealing with the same problems than disappear into another year-long cave.

## License

MIT. See LICENSE.

See [NOTICE.md](NOTICE.md) for the independent-project and third-party mark notice.

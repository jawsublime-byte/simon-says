---
name: simon-says
description: Execute an identified build order exactly as written or explicitly route a builder problem to one bundled playground skill. Use only when the user invokes Simon Says and supplies an authoritative order or asks Simon Says to route a task. Do not activate for ordinary advice, brainstorming, or architecture review.
---

# Simon Says

Treat the user as Simon and the identified instructions as the game script. Higher-level safety, permission, and repository rules always remain in force.

## Choose one mode

- Execute mode: the user supplies or identifies an ordered directive.
- Route mode: the user explicitly asks Simon Says to choose a bundled skill.

Never blend the modes. If neither is clear, ask one question and take no action.

## Execute mode

1. Read the complete directive before changing anything.
2. Freeze its step order, scope, forbidden actions, approval points, acceptance criteria, and required checks.
3. Work on one step at a time.
4. Perform only actions required by the current step or an applicable repository rule.
5. Verify the current step before advancing.
6. Never add features, files, dependencies, refactors, cleanup, optimizations, or alternate architecture unless required.
7. Never infer a choice that would materially change behavior, scope, data, security, or acceptance.
8. Finish only when every original step and check passes.

Do not reorder, merge, split, replace, or pre-execute steps without Simon's explicit amendment.

## Route mode

Read the task and select exactly one leading skill:

- minimum sufficient work or writing: kiss
- deep analysis without scope expansion: miss
- hidden defect search: hide-and-seek
- authorized boundary testing: red-rover
- blind black-box exploration: battleship
- performance paths and bottlenecks: chutes-and-ladders
- one optional approved improvement: recess
- coordinated sequential or concurrent tests: dodgeball
- disposable test isolation: sand-castles
- workflow insertion timing: double-dutch
- disposable UI sketch and clean redraw: etch-a-sketch
- instruction and implementation alignment: patty-cake
- exact code or behavior location: go-fish
- hidden input risk classification: heads-up-seven-up
- memory growth or data-loss tracing: hungry-hippos

Output:

SIMON ROUTES TO: [skill]
Reason: [one sentence connecting the game rule to the problem]

Do not execute the routed skill unless the user also asked for execution or confirms the choice.

## Blocked protocol

Stop only for a safety or permission conflict, contradictory instructions, an unauthorized destructive action, missing information that changes the result, an impossible action, or an unfixable required-check failure.

Output:

SIMON BLOCKED
Step: [current step]
Blocker: [one precise sentence]
Need: [one precise question or authorization]
State: [last completed step]

## Completion

Output:

SIMON COMPLETE
Steps: [completed]/[total]
Changed: [files or artifacts]
Verified: [checks and results]
Deviations: none

Replace the final line only when Simon explicitly authorized an amendment.

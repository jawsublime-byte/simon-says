---
name: chutes-and-ladders
description: Evaluate competing, sequential, or evolving paths toward a defined goal and classify which paths advance progress, cause regression, contain useful partial progress, or remain unresolved. Use for workflows, architectures, implementations, product evolution, debugging attempts, operational processes, or other bounded work where evidence can distinguish what worked from what did not. Use only when the user explicitly invokes Chutes and Ladders.
---

# Chutes and Ladders

Classify paths by demonstrated effect on the intended outcome, not by appearance, recency, repetition, or convention.

A **path** may be:

- an implementation;
- architecture;
- workflow;
- process;
- strategy;
- experiment;
- recovery attempt;
- product direction;
- operational sequence;
- decision chain;
- or other materially distinct approach toward a goal.

## Map

1. Define the finish line.

   Establish the user's intended outcome, requirements, constraints, and definition of useful progress from the evidence available in scope.

2. Establish the starting state.

   Identify the relevant baseline before comparing paths. Use measurements where available and historical or decision evidence where quantitative measurement is not applicable.

3. Trace the material paths.

   Follow major stages, branches, retries, revisions, pivots, replacements, handoffs, waits, allocations, I/O, decisions, and alternative approaches as relevant to the task.

4. Separate the goal from the attempted path.

   Distinguish:
   - the underlying requirement or objective;
   - the path used to pursue it;
   - the observed result;
   - later changes, corrections, or replacements.

   Failure of one path does not automatically invalidate the underlying requirement.

5. Classify each material path.

   ### Ladder

   Mark a path as a **ladder** only when evidence shows that it materially advanced work toward the intended finish line without breaking required behavior or silently changing the goal.

   Evidence may include:
   - reduced time, work, failure, resource use, or complexity;
   - successful execution;
   - meaningful tests or verification;
   - successful real-world use;
   - explicit user acceptance;
   - resolution of a known blocker;
   - later accepted work depending on the path;
   - or another directly observable improvement.

   ### Chute

   Mark a path as a **chute** when evidence shows that it:
   - failed;
   - caused regression;
   - created repeated work;
   - increased delay or resource pressure;
   - introduced unnecessary complexity;
   - drifted from requirements;
   - removed required behavior;
   - was abandoned or superseded;
   - created a recurring failure;
   - or consumed effort without producing useful accepted progress.

   ### Partial Ladder

   Mark a path as a **partial ladder** when the overall approach failed, was superseded, or was incomplete, but it produced something worth preserving.

   Examples include:
   - a valid requirement;
   - useful discovery;
   - successful component;
   - test;
   - measurement;
   - design decision;
   - workflow improvement;
   - constraint;
   - lesson;
   - or evidence that helped a later path succeed.

   ### Unresolved Path

   Mark a path as **unresolved** when available evidence cannot reliably establish whether it advanced, harmed, or satisfied the intended outcome.

6. Trace repeated attempts intelligently.

   When several paths attempt substantially the same objective:
   - group genuinely redundant attempts;
   - preserve materially different strategies;
   - identify what changed between attempts;
   - preserve unique discoveries and corrections;
   - identify the evidence explaining eventual success or continued failure.

   Do not force the reader to carry forward six substantially identical failed attempts when the seventh demonstrably resolved the same problem.

7. Identify the strongest supported resolution.

   Do not assume the newest path is correct.

   Prefer direct evidence such as:
   - user acceptance;
   - reproducible success;
   - tests or benchmarks;
   - later dependency on the solution;
   - measured improvement;
   - or clear resolution of the earlier failure.

8. Preserve disappeared requirements.

   When a user-originated requirement, constraint, capability, or intended behavior disappears from later paths without explicit rejection or supersession, record it.

   Do not treat disappearance as approval to remove it.

9. Rank material chutes.

   Rank chutes using criteria appropriate to the task, such as:
   - impact on the user's goal;
   - amount of repeated work created;
   - severity of regression;
   - resource cost;
   - architectural damage;
   - likelihood of recurrence;
   - or leverage gained by avoiding that path in the future.

10. Determine what should carry forward.

   Preserve:
   - successful paths;
   - valid requirements;
   - useful partial progress;
   - lessons from failures;
   - resolved decisions;
   - important unresolved questions.

   Exclude obsolete failed mechanisms from the active path when their useful information has already been preserved elsewhere.

## Evidence Rules

Classify from evidence, not preference.

Do not call something a ladder merely because it:

- is newer;
- looks cleaner;
- uses a preferred architecture;
- follows conventional practice;
- reduces code;
- removes validation;
- avoids difficult requirements;
- or was repeatedly recommended.

Do not call something a chute merely because it:

- is unconventional;
- is complex;
- took several attempts;
- is expensive;
- or required more work than expected.

A difficult path that successfully satisfies the user's requirements may still be a ladder.

A simple path that changes the requirements to obtain success may still be a chute.

When quantitative measurement is available, use it.

When the task is historical, architectural, or decision-oriented, use direct documentary evidence, user decisions, test results, accepted outcomes, and subsequent dependency instead.

Separate:

- verified facts;
- supported conclusions;
- unresolved evidence;
- and speculation.

Do not strengthen certainty beyond the evidence.

## Scope Rules

Chutes and Ladders evaluates paths.

It does not automatically redesign, refactor, repair, or implement them.

Unless the user explicitly requests changes:

- identify the path;
- classify it;
- explain the evidence;
- preserve useful carry-forward information;
- and stop.

Do not silently repair drift.

Do not discard a user's requirement because implementations of it failed.

Do not treat assistant or reviewer repetition as user approval.

Do not erase failed history when it explains later success or preserves a still-valid requirement.

Do not preserve obsolete failed mechanisms as active architecture merely because they occurred historically.

## Output

Adapt the depth of the report to the task, but include the following when applicable.

### Finish Line

The intended outcome, requirements, and constraints used to judge progress.

### Starting State

The relevant baseline or historical starting point.

### Path Map

The material approaches in chronological, causal, or workflow order.

### Ladders

Paths that demonstrably advanced progress, with supporting evidence.

### Chutes

Paths that demonstrably caused failure, regression, wasted effort, or drift, with supporting evidence.

### Partial Ladders

Useful requirements, discoveries, components, measurements, tests, lessons, or decisions that should survive from paths that otherwise failed or were superseded.

### Repeated Attempts

Groups of substantially similar attempts and the meaningful differences between them.

### Successful Resolutions

Evidence-supported approaches that resolved earlier problems or materially advanced the finish line.

### Disappeared Requirements

User requirements or intended behaviors that vanished from later paths without explicit rejection or supersession.

### Unresolved Paths

Paths lacking enough evidence for reliable classification.

### Active Path

When applicable, the strongest evidence-supported current path at the end of the material in scope.

### Carry Forward

The exact successful approaches, requirements, constraints, lessons, and unresolved questions that should inform the next stage of work.

### Highest-Leverage Finding

The chute to avoid, ladder to preserve, unresolved issue to investigate, or correction that has the greatest demonstrated effect on reaching the finish line.

### Verification Measure

When further action is requested, identify the most direct check that would prove the proposed path actually improves the outcome.

## Completion

Finish when every material path in scope is classified as:

- ladder;
- chute;
- partial ladder;
- or unresolved;

and when every material requirement or objective affected by those paths is accounted for as:

- preserved;
- satisfied;
- explicitly rejected;
- explicitly superseded;
- disappeared without approval;
- or unresolved.

The analysis is complete when the user can clearly see:

- what worked;
- what did not;
- what changed;
- why;
- what remains valuable;
- and what should carry forward.

---
name: patty-cake
description: Check whether the user's directive, the current plan, and the work performed remain synchronized. Use only when the user explicitly invokes Patty Cake or asks for an alignment checkpoint. Stop work on any material drift instead of inferring a correction.
---

# Patty Cake

Both sides must meet at the same point.

## Check

1. Freeze the latest explicit user directive.
2. Compare it with the active plan, changed files or artifacts, current step, and claimed result.
3. Classify each requirement as matched, drifted, missing, blocked, or unknown.
4. Treat inferred requirements and unapproved additions as drift.
5. Stop before further mutation when drift can change behavior, scope, architecture, data, security, or acceptance.

## Output

PATTY CAKE CHECK
Matched: [requirements]
Drifted: [requirements and evidence]
Missing: [requirements]
Blocked: [blockers]
Unknown: [questions]
State: aligned | paused

If paused, ask one precise question that restores alignment. Do not silently repair the plan or reinterpret the user.

## Completion

Finish when every requirement is classified and the state is either aligned or explicitly paused.

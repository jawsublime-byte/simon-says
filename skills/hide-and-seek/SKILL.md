---
name: hide-and-seek
description: Search for hidden defects, silent failures, conflicting configuration, unreachable code, syntax traps, overlooked edge cases, or causes outside the obvious error location. Use only when the user explicitly invokes Hide and Seek for a bounded codebase, workflow, or artifact.
---

# Hide and Seek

Assume the visible failure may be where the defect appears, not where it hides.

## Search

1. Define the allowed search scope and observed symptom.
2. Reproduce or establish the symptom before hunting causes when possible.
3. Trace inputs, transformations, state, boundaries, configuration, and outputs.
4. Search exact error text, affected symbols, related configuration, callers, tests, and recent changes.
5. Inspect hidden paths: default branches, error swallowing, stale state, shadowed config, unreachable code, boundary values, ordering, concurrency, and cleanup.
6. Prove each finding with direct evidence.
7. Stop after every relevant path in scope is accounted for or a precise blocker remains.

## Finding format

For each confirmed defect report:

- Location: exact file, symbol, or step.
- Trigger: condition that exposes it.
- Evidence: code, log, check, or reproduction.
- Effect: observable consequence.
- Minimum repair: smallest change that addresses the cause.

Separate confirmed findings from suspicions. Do not modify anything unless the user requested a fix.

## Completion

Finish when the hidden cause is reproduced and evidenced, or when the report identifies the searched scope, eliminated causes, and the exact missing evidence.

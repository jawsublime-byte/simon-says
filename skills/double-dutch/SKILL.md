---
name: double-dutch
description: Determine where a new process, branch, validation, or handoff can enter an existing workflow without breaking cadence, ordering, ownership, retries, or completion. Use only when the user explicitly invokes Double Dutch.
---

# Double Dutch

Study the rhythm before jumping in.

## Map the rhythm

1. Identify each workflow stage, owner, input, output, timing, retry, timeout, and completion signal.
2. Mark state transitions and points where work can safely pause, branch, rejoin, or roll back.
3. Identify candidate insertion points.
4. Reject any point that duplicates work, breaks ordering, hides failure, loses idempotency, or changes locked behavior.
5. Compare remaining points by disruption, observability, recovery, and latency.
6. Choose one insertion point and define its entry and exit contract.
7. Verify the original workflow still completes with and without the new process.

Do not redesign the full workflow unless the user asks.

## Output

Report the current rhythm, chosen insertion point, branch contract, rejoin condition, rollback path, and verification.

## Completion

Finish when the new process can enter and exit without changing the established workflow contract.

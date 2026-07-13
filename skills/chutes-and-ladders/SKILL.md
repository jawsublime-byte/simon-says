---
name: chutes-and-ladders
description: Evaluate a program or workflow to identify measured ladders that advance work efficiently and chutes that cause bottlenecks, ceilings, retries, regressions, or wasted execution. Use only when the user explicitly invokes Chutes and Ladders.
---

# Chutes and Ladders

Classify paths by measured effect, not appearance.

## Map

1. Define the finish line and the metrics that represent useful progress.
2. Establish a reproducible baseline.
3. Trace major stages, branches, waits, retries, allocations, I/O, and handoffs.
4. Mark a ladder only when evidence shows it reduces time, work, failure, or resource use without breaking requirements.
5. Mark a chute only when evidence shows it adds delay, contention, repeated work, ceiling pressure, or regression.
6. Rank chutes by user impact and repair leverage.
7. Recommend the smallest evidence-backed change and the check that would prove improvement.

Do not refactor merely because code looks inelegant. Do not call a shortcut a ladder when it removes validation, safety, recovery, or correctness.

## Output

Report:

- Finish line and baseline.
- Ladders with evidence.
- Chutes with evidence.
- Highest-leverage repair.
- Verification measure.

## Completion

Finish when every material path in scope is classified or explicitly unmeasured.

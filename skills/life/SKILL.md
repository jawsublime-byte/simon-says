---
name: life
description: Test how a trusted program ages under realistic accumulated use at 3 months, 6 months, 1 year, 5 years, and beyond. Use only when explicitly invoked near build completion to expose storage growth, stale state, latency creep, indexing cost, log or cache bloat, backup pressure, and other failures that emerge over a normal software lifetime.
---

# Life

Do not just prove the program can start its life. Make it survive one.

Life is lifecycle-aging verification. It asks what happens after the software works well enough that somebody trusts it and keeps using it for months or years.

This is not permission to design for imaginary hyperscale. Age the user's expected workload, not an invented company.

## Build the life profile

1. Freeze the current accepted behavior and the user's realistic workload assumptions.
2. Measure or estimate what one normal period of use creates: artifacts, rows, logs, cache entries, histories, temporary files, indexes, backups, jobs, generated outputs, retained deletions, or other persistent state.
3. Record a clean-install baseline for storage, startup time, representative operations, memory use, and other relevant measurements.
4. Translate time into accumulated use for these checkpoints unless the user specifies different ones:
   - Birth: clean/current installation
   - 3 months: early trusted use
   - 6 months: regular accumulated use
   - 1 year: mature installation
   - 5 years: long-lived installation
   - Beyond: continue the realistic growth curve until a meaningful limit or failure appears
5. Where practical, generate or replay representative accumulated state rather than relying only on arithmetic projection.
6. Exercise maintenance behavior that long-lived software depends on: cleanup, retention, restart, reindexing, backup, restore, migration, deletion, deduplication, and old-plus-new data access as applicable.
7. At every age, measure what has accumulated and compare latency, storage, memory, startup, queue depth, index size, backup/restore time, and other relevant behavior against the baseline.
8. Label every conclusion as MEASURED, SIMULATED, PROJECTED, or UNKNOWN. Never present a projection as an observed result.
9. Identify the first age or accumulated-use point where behavior materially degrades, becomes costly, or fails.
10. Trace the deterioration to its growth mechanism rather than merely reporting that the system got slower or larger.
11. Propose the minimum preventive change that preserves the user's architecture and expected result.
12. Re-run or re-project the aging path after the preventive change when evidence allows.

## Guardrails

- Do not assume future user counts, traffic, storage, or business scale the user did not authorize.
- Do not recommend distributed infrastructure merely because a five-year horizon exists.
- Distinguish linear growth from compounding, duplicated, unbounded, or pathological growth.
- Treat cleanup and retention as behavior to verify, not as promises in documentation.
- If a lifecycle claim cannot be measured or responsibly projected, mark it UNKNOWN.

## Output

LIFE CHECK
Birth: [baseline]
Expected use: [operations, artifacts, users, or data per period]
3 Months: [health, measurements, accumulation]
6 Months: [health, measurements, accumulation]
1 Year: [health, measurements, accumulation]
5 Years: [health, measurements, accumulation]
Old Age: [first projected or reproduced breaking/degradation point]
Cause of aging: [growth mechanism]
Evidence class: MEASURED | SIMULATED | PROJECTED | UNKNOWN
Preventive care: [minimum change]
Life expectancy: [estimated safe horizon or UNKNOWN]
State: HEALTHY | AGING RISK | FAILURE REPRODUCED | UNKNOWN

## Completion

Finish when the build has either demonstrated acceptable behavior across its realistic lifecycle or has an evidenced aging risk with a bounded preventive action or explicit unknown.

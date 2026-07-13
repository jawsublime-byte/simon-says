---
name: hungry-hippos
description: Investigate excessive memory use, retained allocations, unbounded caches, data loss in transit, dropped records, buffer growth, or resource leaks. Use only when the user explicitly invokes Hungry Hippos for a bounded program or workflow.
---

# Hungry Hippos

Find what keeps consuming resources or swallowing data.

## Trace

1. Define the resource or data symptom and a reproducible workload.
2. Establish baseline memory, object counts, queue depth, record counts, throughput, and lifecycle as relevant.
3. Trace allocation, ownership, retention, release, serialization, transfer, acknowledgement, retry, and cleanup boundaries.
4. Measure growth or loss by stage instead of guessing from final totals.
5. Test likely causes one at a time: unbounded cache, retained reference, missing close, duplicate retry, backpressure failure, queue growth, truncation, schema rejection, timeout, or swallowed error.
6. Minimize the confirmed reproduction.
7. Recommend the smallest repair and a regression measurement.

Do not optimize without a baseline. Do not label expected caching or buffering as a leak without lifecycle evidence.

## Output

Report the baseline, growth or loss point, reproduction, evidence, root cause, minimum repair, and measurement that proves recovery.

## Completion

Finish when resource ownership or data accounting balances, or when the exact unobserved boundary is identified.

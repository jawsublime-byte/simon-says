---
name: hungry-hippos
description: Investigate resource growth, retained state, data or information loss, dropped records, missing requirements, lossy transformations, unbounded accumulation, or other accounting failures across a bounded system or workflow. Use when inputs, resources, records, evidence, or other expected units should be traceable through stages to an accounted outcome.
---

# Hungry Hippos

Find what keeps consuming resources, swallowing information, or escaping accounting.

## Trace

1. Define the resource, data, information, or accounting symptom and the bounded workload or workflow.
2. Establish the baseline using the relevant units: memory, objects, queue depth, records, files, requirements, evidence, messages, throughput, lifecycle state, or other expected inputs.
3. Trace the relevant allocation, ownership, retention, release, serialization, transformation, filtering, consolidation, transfer, handoff, acknowledgement, retry, and cleanup boundaries.
4. Measure growth, loss, duplication, or distortion by stage instead of guessing from final totals.
5. Test likely causes one at a time: unbounded cache, retained reference, missing close, duplicate retry, backpressure failure, queue growth, truncation, schema rejection, timeout, swallowed error, lossy transformation, unsafe filtering, incorrect consolidation, missing handoff, or dropped information.
6. Distinguish legitimate reduction or retention from actual loss. Deduplication, compression, caching, summarization, or consolidation are not failures when materially important information, identity, authority, relationships, or lifecycle state remain accounted for.
7. Minimize the confirmed reproduction or discrepancy.
8. Recommend the smallest repair or recovery and a regression or reconciliation measurement.

Do not optimize or declare loss without a baseline.

Do not label expected caching, buffering, retention, consolidation, or compression as a leak or loss without lifecycle or accounting evidence.

When tracing information, do not treat survival of the words alone as proof of preservation if material meaning, source, authority, status, qualifiers, or relationships changed.

## Output

Report:

- baseline;
- boundaries traced;
- growth, loss, duplication, distortion, or unobserved point;
- reproduction or accounting discrepancy;
- evidence;
- root cause if established;
- minimum repair or recovery;
- measurement that proves balance.

## Completion

Finish when resource ownership, lifecycle, or information accounting balances, or when the exact boundary where accounting cannot be proven is identified.

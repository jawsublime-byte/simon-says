---
name: dodgeball
description: Coordinate a bounded volley of sequential and concurrent defensive tests to reproduce race, contention, ordering, retry, load, or multi-input failures. Use only when the user explicitly invokes Dodgeball for an authorized non-production target or approved safe test window.
---

# Dodgeball

Throw controlled tests from several angles while keeping every throw attributable.

## Safety gate

Lock the target, environment, concurrency ceiling, data fixtures, stop conditions, and prohibited effects. Default to a sandbox. Stop on data corruption, uncontrolled resource growth, unexpected external traffic, or scope escape.

## Volley

1. Establish a single-request baseline.
2. Run relevant cases sequentially to identify independent failures.
3. Combine only the cases needed to test ordering or interaction.
4. Increase concurrency in declared steps, never as an unbounded flood.
5. Record timing, order, state, identifiers, resources, and outcomes for every volley.
6. Reproduce each failure with the smallest number of coordinated throws.
7. Convert confirmed failures into deterministic tests.

## Completion

Report the safe limits, test matrix, failures, minimized reproductions, and untested combinations. Finish only after cleanup succeeds.

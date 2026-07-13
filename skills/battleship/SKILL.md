---
name: battleship
description: Run bounded black-box or blind tests to find failures outside the expected end path without first relying on implementation details. Use only when the user explicitly invokes Battleship for software they own or are authorized to test.
---

# Battleship

Probe the observable board without looking underneath until the initial test map is complete.

## Rules

- Define the public contract, safe environment, test budget, and prohibited effects first.
- Do not inspect internal implementation before designing and running the initial black-box cases.
- Never use production secrets, destructive cases, third-party targets, or uncontrolled load.

## Probe

1. Establish normal input-output behavior.
2. Partition the input space by type, size, sequence, state, timing, encoding, and missing or extra data.
3. Select representative and boundary cases without assuming where failure lives.
4. Run attributable tests and map hits, misses, hangs, crashes, leaks, and inconsistent responses.
5. When a hit appears, minimize it before inspecting internals.
6. After the blind phase, inspect only the code paths needed to explain confirmed hits.
7. Turn each confirmed hit into a deterministic regression case.

## Completion

Finish when the declared input partitions have coverage, confirmed hits are minimized, and unexplained observations are explicitly listed.

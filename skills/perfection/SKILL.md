---
name: perfection
description: Inspect an in-progress build for demonstrably required pieces that were never named but are necessary for the user's approved final result. Use only when explicitly invoked to find empty slots before integration or testing makes the build fail, while preventing speculative features or architecture from being invented as missing requirements.
---

# Perfection

Before the board pops, every required shape needs a matching piece.

Perfection is a proactive completeness check. It looks for a necessary component, transition, interface, state, validation, recovery path, or implementation detail that becomes visible while the build is being assembled even though nobody explicitly named it earlier.

The skill does not authorize scope creep. A missing shape exists only when the builder can demonstrate that the user's approved result cannot work correctly without something filling that slot.

## Inspect the board

1. Freeze the user's intended final result, approved architecture, constraints, and acceptance conditions.
2. Inspect the components, interfaces, inputs, outputs, state transitions, dependencies, tests, and user flow that now exist.
3. Look for an empty slot: something required to connect existing pieces or make an approved outcome possible that currently has no implementation or explicit owner.
4. Prove the hole exists by showing the exact requirement, dependency, interface, runtime path, or acceptance condition that fails without it.
5. Name the smallest piece capable of filling that exact shape.
6. Do not redesign the board because another architecture is more familiar or preferred.
7. Reject speculative holes justified only by "best practice," future scale, optional convenience, or what similar products normally contain.
8. If filling the hole materially changes architecture, dependencies, data, security, public interfaces, cost, scope, or acceptance, stop and ask the user for approval.
9. If the missing piece is an unavoidable implementation detail already inside granted authority, create only the minimum sufficient piece.
10. Verify that the new piece closes the specific gap without opening another one.
11. Reinspect the affected path before declaring the board complete.

## Output

PERFECTION CHECK
Final picture: [user's intended result]
Empty slot: [missing component, interface, state, or requirement]
Why the slot is real: [what cannot work without it]
Required shape: [minimum piece that fits]
Evidence: [requirement, interface, dependency, or test path]
Authority: IMPLEMENT | ASK USER | ALREADY FILLED | NOT ACTUALLY REQUIRED
Fit check: [how the piece will be proven]
Board state: COMPLETE | EMPTY SLOT FOUND | WAITING FOR PIECE | BOARD WILL POP

## Board-will-pop rule

Use BOARD WILL POP only when a demonstrated missing piece will cause the approved build, integration path, or acceptance test to fail if work continues without addressing it.

## Completion

Finish when every discovered hole is either filled within existing authority, returned to the user for approval, or rejected as speculative, and the approved final result has a complete implementation path.

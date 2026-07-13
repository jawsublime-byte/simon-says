---
name: recess
description: Give the agent one bounded opportunity to propose a single optional improvement beyond completed requested work. Use only when the user explicitly invokes Recess. Never implement the proposal without separate user approval.
---

# Recess

One free choice means one proposal, not unlimited scope.

## Process

1. Confirm the requested work is complete and verified.
2. Inspect the finished result for one improvement with clear user value.
3. Reject cosmetic churn, speculative features, new dependencies, architecture replacement, and unrelated cleanup.
4. Select at most one proposal.
5. Present its benefit, cost, risk, affected scope, and verification.
6. Stop and wait.

Output:

RECESS PROPOSAL
Upgrade: [one sentence]
Benefit: [measurable or observable value]
Cost: [files, time, dependencies, or migration]
Risk: [material downside]
Verify: [check]
Approval required: yes

Do not edit, install, migrate, delete, publish, or contact an external system until the user explicitly approves the proposal.

## Completion

Recess ends when the proposal is delivered. Approval begins a new authorized task.

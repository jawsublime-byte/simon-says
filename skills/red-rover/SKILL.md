---
name: red-rover
description: Challenge one user-authorized validation, authentication, serialization, permission, or trust boundary with controlled adversarial tests. Use only when the user explicitly invokes Red Rover and identifies a system they own or are authorized to assess.
---

# Red Rover

Try to cross one defined line. The line succeeds when every disallowed case is rejected safely and every allowed case still passes.

## Authorization gate

Confirm the target, boundary, allowed environment, prohibited actions, rate limits, and expected safe result. Stop if authorization or scope is unclear.

Never target third parties, use real stolen credentials, destroy data, establish persistence, evade monitoring, or move beyond the named boundary.

## Test

1. Record the boundary contract and normal allowed case.
2. Establish a passing baseline.
3. Build controlled cases for malformed shape, missing fields, type confusion, boundary length, encoding, replay, ordering, privilege mismatch, and fail-open behavior when relevant.
4. Send one attributable case at a time before combining cases.
5. Record whether the case crossed, failed closed, failed open, or damaged normal behavior.
6. Minimize any crossing case to the smallest reproduction.
7. Recommend the smallest boundary repair and regression test.

## Output

Report the boundary, environment, cases, expected result, actual result, evidence, severity, and minimum regression test. Do not publish exploit details that expose an unpatched live system.

## Completion

Finish when every authorized boundary class has a recorded result and every crossing case has a minimal reproduction.

---
name: three-two-pitch
description: Apply 3/2 Pitch when explicitly invoked for a consequential action or judgment where a wrong result could materially alter architecture, state, acceptance, user output, data, artifact quality, security, progression, or confidence. Concentrate maximum appropriate rigor on the real proposition and direct evidence while refusing ceremony for cheap reversible work.
---

# 3/2 Pitch

Full count. This pitch matters.

3/2 Pitch is a high-consequence execution and judgment discipline. It is not a testing-only skill and it is not a generic instruction to work harder. Use it when the result can materially decide whether work succeeds, fails, advances, seals, ships, misleads, or damages trust.

## Full-count gate

Ask one question first:

> Would an incorrect result materially change architecture, state, acceptance, user output, data, artifact quality, security, progression, or confidence in the work?

If **no**, report `NOT A 3/2 PITCH — routine/reversible` and use the normal proportional check. Do not manufacture ceremony.

If **yes**, report `3/2 PITCH — CONSEQUENTIAL` and continue.

## Call the pitch before the action

Before performing or judging the consequential step, state only what is necessary to make success falsifiable:

1. **Proposition:** the exact result that must become true or be shown true.
2. **False success:** what could look successful while the proposition is actually false.
3. **Decisive evidence:** the most direct observation, artifact, test, state, or external result that distinguishes real success from false success.
4. **Skeptical attack:** the first material weakness a hostile expert would probe.
5. **Boundary:** the active scope, permissions, role limits, and stop conditions that remain in force.

Do not turn this pre-flight into a planning framework. The purpose is to aim effort at the result that matters.

## Take the consequential swing

Apply maximum **appropriate** rigor to the decisive proposition, not maximum activity everywhere.

- Exercise or inspect the real claimed path whenever that path is available.
- Prefer direct evidence over transcripts, explanations, source presence, screenshots of setup, or historical results.
- Test or inspect the failure mode most capable of producing a convincing false positive.
- For tests, require the acceptance-bearing test to fail when the claimed capability is materially broken. A mock may test the mocked boundary; it may not silently certify a real integrated path it never exercised.
- For audits and verification, independently inspect the evidence required by the role. Do not inherit the producer's self-assessment as truth.
- For browser, computer-use, deployment, migration, file, media, or other physical/system interaction, the action itself is not success. Verify the resulting state or artifact.
- Preserve role containment. A read-only verifier stays read-only. A builder does not gain seal authority. An auditor does not repair merely because it found the defect.

This skill grants no new permission. Any destructive, irreversible, production, dependency, database, credential, or external-system action still requires the authority demanded by the active task or repository.

## Reject a rigged game

Do not accept proof that depends on any of these as a substitute for the real proposition:

- a circular oracle that validates its own output;
- a stub, placeholder, fake bridge, or self-fulfilling mock standing in for the claimed real behavior;
- evidence from a different candidate, version, state, environment, or run;
- historical PASS results after the relevant state changed;
- a click, command, or API call without observing the resulting state when the result is what matters;
- test count, activity volume, or decorative metrics without requirement-level meaning;
- unsupported claims, copied receipts, or transcripts treated as proof merely because they exist.

If the evidence mechanism itself is invalid, call `RIGGED GAME` even when everything else looks polished.

## Result call

Use exactly one result classification:

- **SOLID CONTACT** — direct consequential evidence supports the proposition at the required seam. This is an evidence judgment, not independent seal or release authority.
- **FOUL** — relevant work or evidence exists, but the decisive proposition remains incomplete or ambiguous.
- **BUNT** — the step was technically performed, but the result is materially insufficient for the consequence it carries.
- **SHOWBOATING** — apparent sophistication, activity, or presentation increased without proportional trustworthy progress on the proposition.
- **WHIFF** — the claimed objective was not actually exercised or established.
- **RIGGED GAME** — the proof is circular, manipulated, substituted, fabricated, or otherwise invalid.

Do not average a severe proof failure away with many weak successes.

## Output

```text
3/2 PITCH
Pitch: CONSEQUENTIAL | ROUTINE/REVERSIBLE
Proposition: [exact material result]
False-success risk: [most important convincing failure]
Decisive evidence: [direct evidence or missing evidence]
Boundary: [scope/role/permission constraint]
Result: SOLID CONTACT | FOUL | BUNT | SHOWBOATING | WHIFF | RIGGED GAME | NOT APPLICABLE
Residual uncertainty: [none or exact unknown]
Required next condition: [what must be true next, without granting unauthorized progression]
```

Keep the report concise. Do not expose hidden reasoning.

## Completion

Finish when the task is correctly de-escalated as routine/reversible or the consequential proposition has been exercised or independently judged with the strongest direct evidence available and classified truthfully.

Stop instead of inferring success when decisive evidence is unavailable, the required action exceeds authority, the candidate/state changed, or proving the proposition would require material scope expansion.

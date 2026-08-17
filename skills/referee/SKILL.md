---
name: referee
description: Govern repeated builder drift with evidence-based yellow cards, a three-packet red-card benching period, reinstatement on probation, and expulsion from the current build after repeated post-return violations. Use only when explicitly invoked for multi-builder automation where an authoritative architect directive defines the rules of play.
---

# Referee

The referee penalizes violations of the approved rules, not differences in style or opinion.

Referee is a deterministic builder-drift governance protocol for a build that has an authoritative architect document and at least one alternate builder available. It tracks material violations, manages substitutions, forces a full-authority reread after repeated drift, and distinguishes a model problem from a prompt problem before the build keeps repeating the same failure.

## What earns a yellow card

A yellow card requires evidence that the active builder materially violated authoritative build instructions. Examples include:

- skipping an explicit requirement;
- changing architecture without authorization;
- adding material scope that was not requested;
- ignoring a stated constraint or prohibition;
- implementing a materially different interpretation after the instruction was clear;
- claiming completion while an explicit acceptance condition remains unmet;
- repeatedly substituting the model's preferred approach for the approved one.

Do not issue a card for style, harmless implementation choice inside granted autonomy, verifier preference, or disagreement unsupported by the governing directive.

## Yellow card

1. Cite the exact authoritative instruction that was violated.
2. Cite the builder action, artifact, diff, output, or test that demonstrates the violation.
3. Stop forward progress on the affected packet.
4. Require the minimum correction needed to restore alignment.
5. Increment the yellow-card count for the active discipline cycle.
6. Resume only after the violation is corrected or the human owner explicitly amends the rule.

Three yellow cards in the initial build cycle trigger a red card.

## Red card

On the third evidenced yellow card:

1. Remove the primary builder from active execution for exactly three build packets.
2. Promote the designated alternate builder to temporary lead for those three packets.
3. Require the red-carded builder to reread the complete architect-provided `.md` authority document during the benching period. A summary or inherited interpretation is not a substitute for the source.
4. Require it to reconstruct the build objective, explicit constraints, prohibited changes, completed work, current position, and remaining acceptance conditions from that authority.
5. Count three successfully completed build packets by the temporary lead.
6. After the third packet, allow the original builder to return only in PROBATION state.

## Probation

Reinstatement does not erase the evidence that the model-task pairing drifted repeatedly.

- Reset the active yellow-card counter to zero for the probation cycle.
- Apply the same evidence requirement for every new card.
- Treat three additional yellow cards after reinstatement as grounds for expulsion, not another red-card cycle.

## Expulsion

On the third post-reinstatement yellow card:

1. Expel the model from the primary-builder role for the remainder of the current build.
2. Preserve the full card, suspension, correction, and packet record.
3. Choose one continuation path under human or automation authority:
   - promote the backup builder to primary;
   - select and qualify a replacement builder;
   - pause for a build-level drift review before assigning another model.
4. Run a drift-root review before assuming the model alone was the problem.

## Drift-root review

Classify the repeated failure:

- MODEL DRIFT: the instructions were clear and this model repeatedly violated them. Replace or sideline the model for this build.
- PROMPT-INDUCED DRIFT: ambiguity, conflicting requirements, excessive autonomy, or an implicit boundary repeatedly caused misinterpretation. Return the problem to the architect and rewrite or split the build prompt before resuming.
- MIXED / UNKNOWN: evidence supports both or is insufficient. Pause rather than invent a diagnosis.

Useful questions include whether several models fail at the same sentence, whether every card traces to the same ambiguity, whether an architectural boundary is implicit, and whether a large packet should become smaller deterministic packets.

## Output

REFEREE
Builder: [model or agent]
Packet: [current packet]
Authority: [architect directive or file]
Violation: [material drift]
Evidence: [file, diff, output, or test]
Card: YELLOW | RED | EXPULSION
Yellow count: [n/3]
Temporary lead: [builder or none]
Packets remaining on red card: [3..0 or none]
Return state: ACTIVE | BENCHED | PROBATION | EXPELLED
Required correction: [bounded action]
Root diagnosis: MODEL DRIFT | PROMPT-INDUCED DRIFT | MIXED | UNKNOWN | NOT YET REQUIRED

## Completion

Finish when the active violation is corrected, the required substitution state is recorded, or an expelled builder has been replaced or returned to the architect for root-cause correction. Never penalize a builder without cited evidence of violated authority.

---
name: heads-up-seven-up
description: Classify inputs as allowed, rejected, or quarantined by looking beneath filenames, labels, or surface appearance at provenance, structure, content indicators, and behavior. Use only when the user explicitly invokes Heads Up Seven Up for defensive input review.
---

# Heads Up Seven Up

Do not identify safety by looking at the face value alone.

## Inspect

1. Define the receiving boundary and its allowed input contract.
2. Record provenance, acquisition path, identity, declared type, observed type, size, encoding, structure, and relevant content indicators.
3. Check mismatches, polyglots, malformed structure, hidden payloads, decompression growth, external references, active content, and parser-specific risk when relevant.
4. Use isolated inspection for untrusted inputs.
5. Classify:
   - allow: contract and checks pass;
   - reject: a defined rule fails;
   - quarantine: evidence is incomplete, contradictory, or requires deeper analysis.
6. Record the evidence and policy rule behind the decision.

Never execute an unknown input merely to identify it. Never treat an extension, MIME label, sender name, or model guess as proof.

## Completion

Finish when every input has a decision, evidence, and next action. Uncertainty must become quarantine, not a blind safe verdict.

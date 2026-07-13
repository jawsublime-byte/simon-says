---
name: etch-a-sketch
description: Create a visible, disposable UI wireframe or prototype, review it against explicit requirements, and erase the temporary draft completely before drawing a fresh alternative when it fails. Use only when the user explicitly invokes Etch A Sketch for interface exploration. Never move a sketch into production without explicit approval.
---

# Etch A Sketch

Draw first. Keep only an approved drawing.

## Freeze the brief

1. Lock the user goal, audience, required screens, essential controls and data, target viewports, design constraints, and acceptance criteria.
2. Ask only questions that block a meaningful drawing, with a maximum of three.
3. Choose the fastest available visual medium that produces a visible artifact, such as an HTML/CSS preview, UI component preview, Figma draft, or wireframe.
4. Work only in a clearly identified temporary canvas.

## Draw

1. Create one visual draft. Do not substitute a prose description when a visual preview tool is available.
2. Use mock data and an interface shell only.
3. Do not add a backend, authentication, persistence, dependencies, production integration, or unrequested features.
4. Render or preview the draft at every target viewport.
5. Compare the draft with every acceptance criterion and present it for user review.

Output:

    ETCH A SKETCH: DRAFT [number]
    Canvas: [temporary location or artifact]
    Meets: [criteria met]
    Misses: [criteria missed]
    Decision needed: keep | shake | amend brief

## Shake

When the user rejects a draft or it fails the acceptance criteria:

1. Preserve only the frozen brief, user feedback, and acceptance criteria.
2. Erase or discard only the files and artifacts created inside the identified temporary canvas.
3. Never delete or overwrite a pre-existing project file.
4. Output `SHAKE SHAKE SHAKE`.
5. Draw a fresh composition from the brief. Do not keep patching the rejected layout.

Stop after three rejected drafts unless the user authorizes more. After the third rejection, ask one question that would most improve the next attempt.

## Graduate

Only an explicit instruction such as `keep this` or `approve` may graduate a sketch.

Before copying any part into the project:

- State the production files, dependencies, and integrations that would be required.
- Ask before adding dependencies or changing production files, databases, APIs, or authentication.
- Distinguish approval of the visual direction from approval to implement it.
- Never claim that a wireframe is accessible, responsive, secure, or production-ready until those properties are verified.

## Completion

Finish with one of these states:

- an approved sketch and a clear implementation handoff;
- a cleanly discarded temporary canvas; or
- a pause after the iteration limit.

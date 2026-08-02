---
name: teachers-pet
description: Use when a Rust implementation, review, repair, or Cargo decision requires authoritative syntax, language, edition, ownership, safety, workspace, crate, or build-system guidance from the approved local manuals, including when a Simon Says packet explicitly authorizes Rust reference consultation.
---

# Teacher's Pet

Ground a Rust decision in the approved read-only library. Retrieve narrowly; never load whole manuals into context.

## Reference gate

1. Resolve the library from `EPOCH_RUST_REFERENCE_ROOT`; otherwise use `C:\Users\jawsu\Agent_Skills_Master\reference-libraries\rust`.
2. Run `scripts/Find-RustReference.ps1 -VerifyOnly` before relying on any source. Stop with `REFERENCE_INTEGRITY_FAILURE` if a filename, byte count, or SHA-256 differs from `references/rust-library.json`.
3. Search language questions with `scripts/Find-RustReference.ps1 -Query '<narrow literal phrase>' -Authority official-edition`. Search Cargo questions with `-Authority official-cargo`. Use `-Authority supplementary` only after the applicable official search is insufficient. Refine the query until the excerpts directly address the decision. Keep every run within the script's match and context bounds.

Completion criterion: all cited material came from a catalog-verified file and every excerpt identifies its file and exact line range.

## Source ladder

Use the highest applicable rung:

1. `The Cargo Book.md` for Cargo, crates, manifests, workspaces, features, profiles, publishing, and build behavior.
2. The newest official *Rust Programming Language* edition compatible with the packet's Rust edition and toolchain for language behavior and idiomatic implementation.
3. Older official editions only to resolve edition differences or historical behavior.
4. Hayes only as a supplementary explanation; never let it override an applicable official source.

When sources differ, report the conflict and prefer the source matching the active toolchain and Rust edition. Documentation evidence informs the implementation; the repository's compiler, formatter, linter, and tests still decide whether the implementation passes.

## Evidence response

Return a compact **Teacher's Pet Note** containing:

- question or uncertainty;
- conclusion;
- citations as `RelativePath:lines START-END`;
- edition/toolchain relevance;
- implementation consequence;
- validation command that will prove the consequence in the repository.

If the verified library does not establish the answer, return `NOT_ESTABLISHED_BY_LOCAL_LIBRARY` and identify the missing authority. Do not fill the gap from memory.

## Packet boundary

When Simon Says or another sealed workflow invokes this skill, remain inside the active packet's owned files, mutation budget, acceptance criteria, and prohibited actions. Teacher's Pet supplies evidence; it does not expand scope, authorize dependencies, modify the manuals, or replace required verification.

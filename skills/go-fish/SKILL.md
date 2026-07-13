---
name: go-fish
description: Locate an exact line, symbol, file, string, configuration value, call path, or behavior in a codebase or supplied artifacts. Use only when the user explicitly invokes Go Fish. Search and report; do not edit unless separately requested.
---

# Go Fish

Find the requested card, not every card in the deck.

## Search

1. Extract the exact target and allowed roots.
2. Search exact text, filename, or symbol first.
3. If exact search fails, search case, punctuation, separator, plural, and naming variants.
4. Trace definitions, references, callers, tests, generated copies, and history only when needed to identify the exact target.
5. Distinguish the canonical source from duplicates, generated files, vendor code, and documentation.
6. Stop when the target is proven or the declared search scope is exhausted.

Prefer the host's fastest indexed search; use ripgrep when a shell is available.

## Output

- Found: yes or no.
- Canonical location: path and symbol or line.
- Evidence: matching text or call relation.
- Other copies: only when they could cause confusion.
- Search scope: roots and exclusions.

Do not modify the found code, broaden into an audit, or claim deletion merely because the current tree has no match.

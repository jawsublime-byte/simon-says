---
name: sand-castles
description: Create or specify a disposable sandbox for testing a function, migration, dependency, workflow, or risky method without affecting production or irreplaceable data. Use only when the user explicitly invokes Sand Castles.
---

# Sand Castles

Build where collapse is expected and harmless.

## Design

1. Identify the behavior being tested and the minimum environment it needs.
2. Isolate filesystem, network, credentials, database, processes, ports, and external services as relevant.
3. Use synthetic or scrubbed fixtures. Never copy production secrets or private data into the sandbox.
4. Define setup, observable success, failure signals, resource limits, and teardown before execution.
5. Create only the minimum disposable environment.
6. Run the test and capture reproducible evidence.
7. Tear down only resources created by the sandbox and verify cleanup.

Ask before installing a dependency, opening network access, changing host configuration, or deleting anything not created by the sandbox.

## Completion

Finish when the test result is captured, production remained untouched, and sandbox cleanup is verified.

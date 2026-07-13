# Contributing

Contributions should make a builder more predictable, not merely add another clever name.

## A valid new skill

A proposal must provide:

1. A familiar childhood rule.
2. One recurring builder problem that naturally matches that rule.
3. A bounded process with a checkable completion condition.
4. Clear stop, safety, and approval conditions.
5. One realistic trigger case and one case that must not trigger.

Do not duplicate an existing skill under a new metaphor. Do not add features, tools, dependencies, or reference files unless the skill needs them to perform its one job.

## Pull request checklist

- The folder name matches the frontmatter name.
- SKILL.md contains only name and description in its YAML frontmatter.
- agents/openai.yaml contains a default prompt that names the skill.
- evals/cases.json covers the skill.
- README.md explains the metaphor-to-problem mapping.
- python scripts/validate_repo.py passes.

By contributing, you agree that your contribution is licensed under the MIT License.

# node-typescript-oxlint-template

![build status](https://github.com/nihalgonsalves/node-typescript-oxlint-template/workflows/build/badge.svg)
![last commit](https://img.shields.io/github/last-commit/nihalgonsalves/node-typescript-oxlint-template)
![license UNLICENSE](https://img.shields.io/github/license/nihalgonsalves/node-typescript-oxlint-template?color=brightgreen)

TypeScript template repository with:

- Docker
- oxlint and oxfmt
- lefthook (precommit)
- GitHub Action workflows, Dependabot.
- VSCode extensions and settings
- `.devcontainer`

Dependabot keeps the dependencies up to date.

- **Build tool**: yarn (can be replaced with npm: `rm yarn.lock && npm install`)
- **Target Node version**: 24.x ([es2024](https://github.com/microsoft/TypeScript/wiki/Node-Target-Mapping))
- **Structure**: `src/` for TypeScript source files
- Also includes a default `.editorconfig` with 2-space indents

Scripts:

- `pnpm dev` run from source, auto-restarting
- `pnpm lint` run oxlint
- `pnpm lint --fix` run oxlint with auto-fix
- `pnpm build` typecheck
- `pnpm test` currently does nothing

## use with react

See <https://github.com/nihalgonsalves/esconfig>

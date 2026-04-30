# Node Environment

Optimized Node 22 container with fast package managers. Drop code in `workdir/` and run.

## Fast Commands

```bash
cd node
docker compose up -d                 # Start
docker compose exec node-dev sh       # Enter shell
```

## Pre-installed

- pnpm (default, fastest package manager)
- tsx, ts-node (TypeScript execution)
- vitest, jest (testing)
- eslint, prettier (linting)

## Optimizations

- Corepack enabled for auto-manager-selection
- npm audit/fund disabled
- Strict version pinning ready

## Usage

```bash
# Run Node/TS directly
docker compose run node-dev node index.js
docker compose run node-dev tsx index.ts

# Install deps with pnpm (fastest)
docker compose exec node-dev pnpm install

# Add a package
docker compose exec node-dev pnpm add package-name
```
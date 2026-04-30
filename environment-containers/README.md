# Environment Containers

Pre-configured Docker environments for Python and Node. Each folder is independent.

```
environment-containers/
├── python/     # Python 3.12 + uv + black + pytest
└── node/       # Node 22 + pnpm + tsx + vitest
```

## Quick Start

```bash
# Python
cd python
docker compose up -d
docker compose exec python-dev bash

# Node
cd node
docker compose up -d
docker compose exec node-dev sh
```

## Concept

Drop your code in `workdir/` and execute with pre-configured tooling. No setup needed.
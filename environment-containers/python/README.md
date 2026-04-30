# Python Environment

Optimized Python 3.12 container with fast tooling. Drop code in `workdir/` and run.

## Fast Commands

```bash
cd python
docker compose up -d                  # Start
docker compose exec python-dev bash   # Enter shell
```

## Pre-installed

- uv: ultra-fast Python package installer (50-100x faster than pip)
- black, isort, ruff (linting/formatting)
- pytest, mypy (testing/type checking)

## Optimizations

- Layer caching optimized for dependencies
- PYTHONDONTWRITEBYTECODE=1
- PYTHONOPTIMIZE=2
- pip/uv with disabled telemetry

## Usage

```bash
# Run Python code directly
docker compose run python-dev python your_script.py

# Install deps with uv (fastest)
docker compose exec python-dev uv add package-name

# Or with pip
docker compose exec python-dev pip install package-name
```
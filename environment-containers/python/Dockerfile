FROM python:3.12-slim-bookworm

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONOPTIMIZE=2 \
    UV_SYSTEM_PYTHON=1 \
    UV_NO_PROGRESS=1 \
    UV_NO_UPDATE_NOTIFIER=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

RUN apt-get update && apt-get install -y --no-install-recommends \
        curl \
        git \
        build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"

RUN uv pip install --system \
        black \
        isort \
        ruff \
        pytest \
        mypy

WORKDIR /workspace

RUN useradd -m -s /bin/bash devuser && chown -R devuser:devuser /workspace
USER devuser
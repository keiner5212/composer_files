FROM node:22-alpine

ENV NODE_ENV=development \
    NPM_CONFIG_AUDIT=false \
    NPM_CONFIG_FUND=false \
    NPM_CONFIG_LOGLEVEL=warn \
    PNPM_HOME=/pnpm \
    PATH="/pnpm/bin:$PATH" \
    COREPACK_ENABLE_AUTO_PIN=0

RUN apk add --no-cache \
        curl \
        git \
        bash \
        openssl

RUN corepack enable && corepack prepare pnpm@latest --activate

RUN pnpm add -g \
        typescript \
        tsx \
        ts-node \
        vitest \
        jest \
        eslint \
        prettier \
        @types/node

WORKDIR /workspace

RUN adduser -D -s /bin/bash devuser && chown -R devuser:devuser /workspace
USER devuser
FROM node:22-alpine

ENV NODE_ENV=development
ENV NPM_CONFIG_AUDIT=false
ENV NPM_CONFIG_FUND=false
ENV NPM_CONFIG_LOGLEVEL=warn
ENV PNPM_HOME=/pnpm
ENV PATH=/usr/local/bin:/pnpm/bin:$PATH
ENV COREPACK_ENABLE_AUTO_PIN=0

RUN apk add --no-cache curl git bash openssl

RUN corepack enable && corepack prepare pnpm@latest --activate
RUN pnpm config set global-bin-dir /usr/local/bin

RUN pnpm add -g typescript tsx ts-node vitest jest eslint prettier @types/node

WORKDIR /workspace

RUN adduser -D -s /bin/bash devuser && chown -R devuser:devuser /workspace
USER devuser
FROM node:24-slim

WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./pnpm-lock.yaml ./
COPY ./pnpm-workspace.yaml ./

RUN npm install -g corepack && corepack enable
RUN --mount=type=cache,target=/root/.local/share/pnpm/store pnpm install --frozen-lockfile

COPY tsconfig.json .
COPY src/ ./src/

ENV NODE_ENV=production

EXPOSE 4000

CMD ["node", "--enable-source-maps", "src/index.ts"]

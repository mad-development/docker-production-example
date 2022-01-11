## BUILDER START
FROM node:14.18.2-slim AS builder
WORKDIR /builder
COPY package.json /builder
RUN npm install --production
## BUILDER FINISH

## RUNNER START
FROM node:14.18.2-slim AS runner
WORKDIR /app
COPY --from=builder /builder /app
CMD ["node", "app.js"]
## RUNNER FINISH
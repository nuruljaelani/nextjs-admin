FROM node:lts-slim AS builder

WORKDIR /app
COPY . .
RUN npm install

FROM node:lts-slim
WORKDIR /app/fe
COPY --from=builder /app .

EXPOSE 3000
CMD ["npm", "run", "dev"]
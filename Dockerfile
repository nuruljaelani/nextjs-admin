FROM node:current-alpine AS builder

WORKDIR /app
COPY . .
RUN npm install

FROM node:current-alpine
WORKDIR /app/fe
COPY --from=builder /app .

EXPOSE 3000
CMD ["npm", "run", "dev"]
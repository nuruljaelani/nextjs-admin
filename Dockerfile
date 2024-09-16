FROM node:lts-slim

WORKDIR /app/fe
COPY package*.json .
RUN npm install
COPY . .

EXPOSE 3000
CMD ["npm", "run", "dev"]
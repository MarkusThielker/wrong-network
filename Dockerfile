FROM node:20-slim as build

RUN apt update -y && apt install openssl -y

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

RUN npm install
COPY . .

RUN npm run build

EXPOSE 3000

CMD ["node", "-r", "dotenv/config", "build"]

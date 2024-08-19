FROM node:alpine as build

WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM lipanski/docker-static-website:latest
COPY --from=build /app/dist .

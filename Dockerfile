FROM --platform=$BUILDPLATFORM node:18-alpine AS build

ARG TARGETPLATFORM

ARG BUILDINGPLATFORM

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 8080

CMD [ "node", "app.js" ]
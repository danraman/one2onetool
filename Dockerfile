# syntax=docker/dockerfile:1

FROM alpine:3.16
ENV NODE_VERSION 16.16.0
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm ci
RUN npm install --production
COPY . .
CMD [ "npm", "run","start" ]

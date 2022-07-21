# syntax=docker/dockerfile:1

FROM node:16.x
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm ci
RUN npm install --production
COPY . .
CMD [ "npm", "run","start" ]

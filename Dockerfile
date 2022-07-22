# syntax=docker/dockerfile:1

FROM ubuntu
ENV NODE_VERSION 16.16.0
WORKDIR /app
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs \
    npm                       
COPY . .
EXPOSE 3000
CMD [ "npm", "run","start" ]

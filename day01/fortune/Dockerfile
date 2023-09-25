ARG NODE_VER=20

FROM node:${NODE_VER} 

## Build
# mkdir /app && cd /app
WORKDIR /app

# you are in /app

COPY main.js .
COPY package.json .
COPY package-lock.json .

COPY public public
COPY views views

RUN npm ci 

## Running
ENV APP_PORT=3000

EXPOSE ${APP_PORT}

ENTRYPOINT node main.js
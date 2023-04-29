FROM node:20-buster-slim 

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

ENV export NODE_OPTIONS=--openssl-legacy-provider

WORKDIR /usr/src/app

COPY package.json .
COPY yarn.lock .

RUN yarn install 

COPY . . 

CMD ["yarn", "start"]

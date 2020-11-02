FROM node:15.0.1-alpine

RUN apk add --no-cache make gcc g++ python3

WORKDIR /app

COPY . .

RUN yarn && yarn build && \
  apk del make gcc g++ python3

ENTRYPOINT ["yarn", "start"]

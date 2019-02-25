FROM node:10-alpine

RUN apk add --update --no-cache \
    python \
    build-base \
    git \
    bash \
    openjdk8-jre-base \
    # chromium dependencies
    nss \
    chromium-chromedriver \
    chromium \
    curl \
    && apk upgrade --no-cache --available

USER node

ENV CHROME_BIN /usr/bin/chromium-browser

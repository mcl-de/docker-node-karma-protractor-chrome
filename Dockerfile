FROM node:10-alpine

RUN sed -i -e 's/v3.8/edge/g' /etc/apk/repositories \
    && apk add --no-cache \
    curl \
    python \
    build-base \
    git \
    bash \
    openjdk8-jre-base \
    # chromium dependencies
    nss \
    chromium-chromedriver \
    chromium \
    && apk upgrade --no-cache --available

USER node

ENV CHROME_BIN /usr/bin/chromium-browser

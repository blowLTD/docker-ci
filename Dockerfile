FROM node:$NODE_VERSION-alpine

RUN apk --no-cache add ca-certificates wget && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk && \
    apk add glibc-2.28-r0.apk 
    
RUN apk add --no-cache git bash

RUN npm install -g \
    npm@6.4.1 \
    serverless@1.60.5 \
    github-release-notes@0.17.0

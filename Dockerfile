FROM node:$NODE_VERSION

RUN npm install -g npm@6.4.1
RUN npm install -g serverless@1.57.0
RUN npm install -g github-release-notes@0.17.0

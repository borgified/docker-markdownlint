FROM node:alpine
WORKDIR /data
RUN npm install -g markdownlint-cli && rm -rf ~/.npm/
ENTRYPOINT ["/usr/local/bin/markdownlint"]

#!/bin/bash
docker stop go-web-mini-ui
export NODE_OPTIONS=--openssl-legacy-provider && npm run build:prod
docker build -t go-web-mini-ui .
docker run -it -d -p 8098:80 --name go-web-mini-ui go-web-mini-ui

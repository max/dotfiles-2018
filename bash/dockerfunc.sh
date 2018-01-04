#!/usr/bin/env bash

node() {
  docker run \
    --rm \
    --workdir /app \
    --volume $(pwd):/app \
    mschoening/node:latest \
    node "$@"
}

npm() {
  docker run \
    --rm \
    --workdir /app \
    --volume $(pwd):/app \
    mschoening/node:latest \
    npm "$@"
}

npx() {
  docker run \
    --rm \
    --workdir /app \
    --volume $(pwd):/app \
    mschoening/node:latest \
    npx "$@"
}

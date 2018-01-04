#!/usr/bin/env bash

gcloud() {
  docker run \
    --rm \
    -it \
    -v "${HOME}/.gcloud:/root/.config/gcloud" \
    -v "${HOME}/.ssh:/root/.ssh:ro" \
    --name gcloud \
    mschoening/gcloud "$@"
}

node() {
  docker run \
    --rm \
    --workdir /app \
    --volume $(pwd):/app \
    --name node \
    mschoening/node \
    node "$@"
}

npm() {
  docker run \
    --rm \
    --workdir /app \
    --volume $(pwd):/app \
    --name npm \
    mschoening/node \
    npm "$@"
}

npx() {
  docker run \
    --rm \
    --workdir /app \
    --volume $(pwd):/app \
    --name npx \
    mschoening/node \
    npx "$@"
}

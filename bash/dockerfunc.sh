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

dgit() {
  docker run \
    --rm \
    -it \
    -v "${HOME}/.gitconfig:/root/.gitconfig" \
    -v "${HOME}/.gitignore_global:/root/.gitignore_global" \
    -v "${HOME}/.ssh:/root/.ssh:ro" \
    -v $(pwd):/app \
    --workdir /app \
    --name hub \
    mschoening/hub "$@"
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

dswift() {
  docker run \
    --rm \
    -it \
    -v $(pwd):/app \
    --workdir /app \
    --name swift \
    mschoening/swift "$@"
}

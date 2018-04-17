#!/usr/bin/env bash

aws(){
	docker run \
    --rm \
    -it \
		-v "${HOME}/.aws:/root/.aws" \
		--log-driver none \
		--name aws \
		mschoening/aws "$@"
}

dgcloud() {
  docker run \
    --rm \
    -it \
    -v "${HOME}/.gcloud:/root/.config/gcloud" \
    -v "${HOME}/.ssh:/root/.ssh:ro" \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(pwd):/app \
    --workdir /app \
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

dnode() {
  docker run \
    --rm \
    --workdir /app \
    --volume $(pwd):/app \
    --name node \
    mschoening/node \
    node "$@"
}

dnpm() {
  docker run \
    --rm \
    --workdir /app \
    --volume $(pwd):/app \
    --name npm \
    mschoening/node \
    npm "$@"
}

dnpx() {
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

#!/bin/bash
set -eu -o pipefail

DOCKER_REPO=drud/ddev-gitpod-base:20211027_improve_gitpod

echo "Pushing ${DOCKER_REPO}"
set -x
# Build only current architecture and load into docker
docker buildx build -t ${DOCKER_REPO} --push --platform=linux/amd64 .
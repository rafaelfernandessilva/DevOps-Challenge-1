#!/bin/bash

set -xe
pwd
#created tag for docker images
COMMIT_ID=$(git rev-parse --short $GIT_COMMIT)
TAG=$COMMIT_ID-$BUILD_NUMBER
echo $TAG

#creating docker image
docker build -t python-test:$TAG .

#!/bin/bash

set -xe
pwd

COMMIT_ID=$(git rev-parse --short $GIT_COMMIT)
TAG=$COMMIT_ID-$BUILD_NUMBER
echo $TAG

sed -i "s/python-test:.*/python-test:"$TAG"/" docker-compose.yml
cat docker-compose.yml

#docker-compose up -d --build
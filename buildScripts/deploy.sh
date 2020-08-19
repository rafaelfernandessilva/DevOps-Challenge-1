#!/bin/bash

set -xe
pwd

COMMIT_ID=$(git rev-parse --short $GIT_COMMIT)
TAG=$COMMIT_ID-$BUILD_NUMBER
echo $TAG

cat docker-compose.yml
sed -i "s/python-test:TAG/python-test:"$TAG"/" docker-compose.yml

#docker-compose up -d --build
#!/usr/bin/env bash

echo "Build a docker image."
echo "docker build -t bogonets/answer-api:${API_VERSION}-${TARGET_VERSION} --build-arg API_VERSION=${API_VERSION} --file=Dockerfile ."
docker build -t wooruang/darknet:cuda11.3.1 .

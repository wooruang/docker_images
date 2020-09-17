#!/usr/bin/env bash

docker build -t wooruang/object-count:ubuntu18.04-cuda9.2-cudnn7 --file=Dockerfile . $@

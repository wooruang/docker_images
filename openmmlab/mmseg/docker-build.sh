#!/usr/bin/env bash

docker build -t wooruang/mmseg:ubuntu18.04-cuda11.3-cudnn8 --file=Dockerfile .

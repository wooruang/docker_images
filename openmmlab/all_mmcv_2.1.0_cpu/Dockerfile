ARG PYTORCH="2.1.0"
ARG MMCV="2.1.0"
ARG MMPRETRAIN="1.1.1"
ARG MMDET="3.2.0"
ARG MMSEGMENTATION="1.2.1"

FROM python:3.10.13-slim-bullseye

ENV TZ=Asia/Seoul
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y git ninja-build vim libglib2.0-0 libsm6 libxrender-dev libxext6 libgl1-mesa-dev  \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install MMCV
ARG PYTORCH
ARG MMCV
ARG MMPRETRAIN
ARG MMDET
ARG MMSEGMENTATION

RUN ["/bin/bash", "-c", "pip install torch==${PYTORCH}+cpu torchvision==0.16.0+cpu --extra-index-url https://download.pytorch.org/whl/cpu"]
RUN ["/bin/bash", "-c", "pip install openmim opencv-python matplotlib prettytable scipy tensorboard ftfy regex"]
RUN ["/bin/bash", "-c", "mim install mmengine"]
RUN ["/bin/bash", "-c", "mim install mmcv>=${MMCV}"]
RUN ["/bin/bash", "-c", "mim install mmpretrain==${MMPRETRAIN}"]
RUN ["/bin/bash", "-c", "mim install mmdet==${MMDET}"]
RUN ["/bin/bash", "-c", "mim install mmsegmentation==${MMSEGMENTATION}"]

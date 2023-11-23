ARG PYTORCH="2.1.0"
ARG CUDA="11.8"
ARG CUDNN="8"
ARG MMCV="2.1.0"
ARG MMPRETRAIN="1.1.1"
ARG MMDET="3.2.0"
ARG MMSEGMENTATION="1.2.1"

FROM pytorch/pytorch:${PYTORCH}-cuda${CUDA}-cudnn${CUDNN}-devel

ENV TZ=Asia/Seoul
ENV DEBIAN_FRONTEND=noninteractive

# ENV TORCH_CUDA_ARCH_LIST="6.0 6.1 7.0+PTX"
# ENV TORCH_NVCC_FLAGS="-Xfatbin -compress-all"
# ENV CMAKE_PREFIX_PATH="$(dirname $(which conda))/../"

RUN apt-get update && apt-get install -y git ninja-build vim libglib2.0-0 libsm6 libxrender-dev libxext6 libgl1-mesa-dev  \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN conda clean --all

# Install MMCV
ARG PYTORCH
ARG CUDA
ARG MMCV
ARG MMPRETRAIN
ARG MMDET
ARG MMSEGMENTATION
RUN ["/bin/bash", "-c", "pip install openmim opencv-python matplotlib prettytable scipy tensorboard ftfy regex"]
RUN ["/bin/bash", "-c", "mim install mmengine"]
RUN ["/bin/bash", "-c", "mim install mmcv>=${MMCV}"]
RUN ["/bin/bash", "-c", "mim install mmpretrain==${MMPRETRAIN}"]
RUN ["/bin/bash", "-c", "mim install mmdet==${MMDET}"]
RUN ["/bin/bash", "-c", "mim install mmsegmentation==${MMSEGMENTATION}"]


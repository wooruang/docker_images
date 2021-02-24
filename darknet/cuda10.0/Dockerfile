From nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

WORKDIR /
ARG DEBIAN_FRONTEND=noninteractivel
ENV TZ=Asia/Seoul
RUN apt update && apt install -y build-essential wget libopencv-dev

# Install cmake.
RUN wget https://github.com/Kitware/CMake/releases/download/v3.18.1/cmake-3.18.1-Linux-x86_64.tar.gz
RUN tar xzf cmake-3.18.1-Linux-x86_64.tar.gz
ENV PATH="/cmake-3.18.1-Linux-x86_64/bin:${PATH}"


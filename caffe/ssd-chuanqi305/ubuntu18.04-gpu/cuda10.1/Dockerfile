FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
LABEL maintainer="wooruang@gmail.com"

RUN apt update && apt install -y build-essential curl wget git python-dev python-pip
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler libatlas-base-dev 
RUN apt update && apt install -y libgflags-dev libgoogle-glog-dev liblmdb-dev
RUN apt update && apt install -y --no-install-recommends libboost-all-dev

# Install cmake.
RUN wget https://github.com/Kitware/CMake/releases/download/v3.14.3/cmake-3.14.3-Linux-x86_64.tar.gz
RUN tar xzf cmake-3.14.3-Linux-x86_64.tar.gz
ENV PATH "$PATH:/cmake-3.14.3-Linux-x86_64/bin"

# Clone a repository of ssd of cafffe.
RUN git clone https://github.com/wooruang/caffe.git
WORKDIR /caffe
RUN git checkout ssd-chuanqi305

# Download pretrained VGGNet.
RUN mkdir -p /caffe/models/VGGNet
WORKDIR /caffe/models/VGGNet
RUN wget http://cs.unc.edu/~wliu/projects/ParseNet/VGG_ILSVRC_16_layers_fc_reduced.caffemodel

# Build caffe.
WORKDIR /caffe
RUN pip install -r /caffe/python/requirements.txt
RUN pip install opencv-python
RUN mkdir build
WORKDIR /caffe/build
RUN cmake -DCMAKE_BUILD_TYPE=Release .. && make -j8

ENV PYTHONPATH "$PYTHONPATH:/caffe/python"

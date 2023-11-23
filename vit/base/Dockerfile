FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel
LABEL maintainer="wooruang@gmail.com"

RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
RUN apt-get update && apt-get -y install build-essential default-libmysqlclient-dev libgl1-mesa-glx libglib2.0-0 vim

RUN pip install opencv-python matplotlib prettytable scipy tensorboard timm tensorboardX einops ftfy regex


FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel
LABEL maintainer="wooruang@gmail.com"

RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
RUN apt-get update && apt-get -y install build-essential default-libmysqlclient-dev libgl1-mesa-glx libglib2.0-0 vim

RUN pip install mmcv-full -f https://download.openmmlab.com/mmcv/dist/cu113/torch1.11/index.html
RUN pip install mmsegmentation==0.30.0 opencv-python ray chardet openpyxl 

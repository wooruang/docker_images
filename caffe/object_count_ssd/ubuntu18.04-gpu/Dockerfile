FROM wooruang/caffe-ssd:ubuntu18.04-cuda9.2-cudnn7
LABEL maintainer="wooruang@gmail.com"

ARG GITLAB_ID
ARG GITLAB_PW

# For Korean.
ENV LC_ALL=C.UTF-8

RUN apt-get update && apt-get install -y python-tk

WORKDIR /

RUN git clone http://${GITLAB_ID}:${GITLAB_PW}@git.bogohitec.com/bogonet-si/ObjectCount.git
WORKDIR /ObjectCount
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "/ObjectCount/main.py"]


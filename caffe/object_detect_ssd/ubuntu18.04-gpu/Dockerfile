FROM wooruang/caffe-ssd:ubuntu18.04-cuda9.2-cudnn7
LABEL maintainer="wooruang@gmail.com"

# For Korean.
ENV LC_ALL=C.UTF-8

RUN apt-get update && apt-get install -y python-tk

WORKDIR /

RUN git clone https://github.com/wooruang/ObjectCounter.git
WORKDIR /ObjectCounter
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "/ObjectCounter/object_counter.py"]


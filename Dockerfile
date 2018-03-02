FROM tensorflow/tensorflow:1.6.0

MAINTAINER Christoph Gebendorfer

RUN pip install sympy && \
    pip install requests && \
    pip install bz2file


COPY . /etc/tensor2tensor
ENV PYTHONPATH /etc/tensor2tensor
ENV TMP_DIR /tmp/t2t_datagen

RUN mkdir -p /etc/tensor2tensor/data
RUN mkdir -p /etc/tensor2tensor/train
ENV DATA_DIR /etc/tensor2tensor/data
ENV TRAIN_DIR /etc/tensor2tensor/train
VOLUME ["/etc/tensor2tensor/data", "/etc/tensor2tensor/train"]

WORKDIR /etc/tensor2tensor/tensor2tensor/bin

ENTRYPOINT ["/bin/bash"]

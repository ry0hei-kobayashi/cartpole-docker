FROM ubuntu:20.04

RUN sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV LC_ALL=C.UTF-8
ENV export LANG=C.UTF-8
ENV SHELL /bin/bash


RUN apt update 
RUN apt install -y python3-dev \
                python3-tk \
                python3-pip \
                python-opengl

RUN pip3 install --upgrade pip
RUN pip3 install setuptools \
                 gym==0.21.0 \
                 rendering \ 
                 gymgrid2 \
                 pyglet==1.5.27 \
                 chainer==4.0.0 \
                 chainerrl==0.3.0

COPY chainerrl_test.py chainerrl_test.py


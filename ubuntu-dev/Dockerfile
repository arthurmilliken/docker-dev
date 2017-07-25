FROM ubuntu:16.04

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	autoconf \
	automake \
	autotools-dev \
	bash-completion \
	build-essential \
	cmake \
	curl \
	git \
	libpcre3-dev \
	libtool \
	make \
	pkg-config \
	python \
	uuid-dev \
	valgrind \
	vim \
	wget

RUN apt-get install sudo -y

# Setup User
RUN useradd --home /home/super -m super -K UID_MIN=10000 -K GID_MIN=10000 -s /bin/bash
# RUN mkdir /home/super
RUN chown super:super /home/super
RUN adduser super sudo
RUN echo 'super ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER super

# Configure Git
RUN git config --global credential.helper store && \
	git config --global push.default simple && \
	git config --global alias.co checkout && \
	git config --global alias.br branch && \
	git config --global alias.ci commit && \
	git config --global alias.st status

COPY .vimrc .bashrc.append /home/super/

RUN cat ~/.bashrc.append >> ~/.bashrc

ENTRYPOINT bash

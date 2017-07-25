FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
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
	pkg-config \
	uuid-dev \
	valgrind \
	vim \
	wget

RUN git config --global credential.helper store && \
	git config --global push.default simple && \
	git config --global alias.co checkout && \
	git config --global alias.br branch && \
	git config --global alias.ci commit && \
	git config --global alias.st status

COPY .vimrc .bashrc.append /root/

RUN cat /root/.bashrc.append >> /root/.bashrc

WORKDIR /opt

ENTRYPOINT bash

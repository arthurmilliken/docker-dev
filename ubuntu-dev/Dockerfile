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

# Set up dev user
RUN useradd --home /home/dev -m dev -K UID_MIN=10000 -K GID_MIN=10000 -s /bin/bash && \
    chown dev:dev /home/dev && \
    adduser dev sudo && \
    echo 'dev ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER dev

# Configure git
RUN git config --global credential.helper store && \
	git config --global push.default simple && \
	git config --global alias.co checkout && \
	git config --global alias.br branch && \
	git config --global alias.ci commit && \
	git config --global alias.st status

# Customize startup scripts
COPY .vimrc .bashrc.append /home/dev/
RUN cat ~/.bashrc.append >> ~/.bashrc

ENTRYPOINT ["bash", "--login"]


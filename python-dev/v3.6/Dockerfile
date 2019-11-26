FROM python:3.6-buster

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
	git \
	vim \
	sudo

# Set up dev user
RUN useradd --home /home/dev -m dev -K UID_MIN=10000 -K GID_MIN=10000 -s /bin/bash \
    && chown dev:dev /home/dev \
    && adduser dev sudo \
    && echo 'dev ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER dev

# Configure git
RUN git config --global credential.helper store \
	&& git config --global push.default simple \
	&& git config --global diff.submodule log \
	&& git config --global alias.co checkout \
	&& git config --global alias.br branch \
	&& git config --global alias.ci commit \
	&& git config --global alias.st status

# Customize startup scripts
COPY .vimrc .bashrc.append /home/dev/
RUN cat ~/.bashrc.append >> ~/.bashrc
WORKDIR /home/dev

CMD ["bash", "--login"]


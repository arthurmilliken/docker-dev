FROM arthurmilliken/ubuntu-dev

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

RUN apt-get update && apt-get install -y \
	nodejs \
	build-essential \
	python \
	make

RUN npm install -g node-gyp

WORKDIR /opt

ENTRYPOINT bash

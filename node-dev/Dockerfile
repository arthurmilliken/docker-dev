FROM arthurmilliken/ubuntu-dev

USER root

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt-get install -y \
	python \
	nodejs

RUN npm install -g node-gyp

USER dev

ENTRYPOINT ["bash", "--login"]


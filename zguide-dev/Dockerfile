FROM arthurmilliken/ruby-dev:2.3.3

USER root

# Install dependencies
ENV PYTHON_PIP_VERSION 9.0.1

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt-get install -y \
	python \
	nodejs
RUN npm install -g node-gyp

RUN wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' \
	&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" \
	&& rm /tmp/get-pip.py

USER dev

# Install LibZMQ
WORKDIR /home/dev
RUN git clone https://github.com/zeromq/libzmq
WORKDIR libzmq
RUN ./autogen.sh && \
	./configure && \
	make check && \
	sudo make install && \
	sudo ldconfig

# Install CZMQ
WORKDIR /home/dev
RUN git clone https://github.com/zeromq/czmq.git
WORKDIR czmq
RUN ./autogen.sh && \
	./configure
# RUN	make check
RUN	sudo make install && \
	sudo ldconfig

# Python bindings
RUN sudo pip install pyzmq

# Node.js bindings
RUN sudo npm install -g zeromq

# Ruby bindings
RUN	/bin/bash -l -c 'gem install ffi-rzmq'

WORKDIR /opt

ENTRYPOINT ["bash", "--login"]

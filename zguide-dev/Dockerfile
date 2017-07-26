FROM arthurmilliken/ruby-dev:2.3.3

USER root

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt-get install -y \
	nodejs
RUN npm install -g node-gyp

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
RUN	make check && \
	sudo make install && \
	sudo ldconfig

WORKDIR /opt

ENTRYPOINT ["bash", "--login"]

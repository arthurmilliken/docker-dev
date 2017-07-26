FROM arthurmilliken/ubuntu-dev:16.04

USER root

RUN apt-get update && apt-get install -y \
	ruby-full

USER dev

ENV RUBY_VERSION 2.3.3

# Install RVM
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 && \
	curl -sSL https://get.rvm.io | bash -s stable && \
	/bin/bash -l -c 'source ~/.rvm/scripts/rvm'

# Install Ruby
RUN /bin/bash -l -c 'rvm requirements' && \
	/bin/bash -l -c 'rvm install $RUBY_VERSION' && \
	/bin/bash -l -c 'rvm use $RUBY_VERSION --default' && \
	/bin/bash -l -c 'rvm rubygems current' && \
	/bin/bash -l -c 'gem install bundler'

ENTRYPOINT ["bash", "--login"]

#!/bin/bash -x
mkdir -p $GOPATH/src-docker
docker run --name go-dev -v $GOPATH/src-docker:/home/dev/go/src -v $LOCAL_SRC:/opt/src -it arthurmilliken/go-dev

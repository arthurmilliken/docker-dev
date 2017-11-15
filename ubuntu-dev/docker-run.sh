#!/bin/bash -x
docker run --name ubuntu-dev -v $LOCAL_SRC:/home/dev/src -it arthurmilliken/ubuntu-dev

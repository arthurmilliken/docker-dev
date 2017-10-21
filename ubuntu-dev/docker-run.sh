#!/bin/bash -x
docker run --name ubuntu-dev -v $LOCAL_SRC:/opt/src -it arthurmilliken/ubuntu-dev

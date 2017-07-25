#!/bin/bash -x
docker run --name ubuntu-dev -v $LOCAL_SRC:/opt/src -p $PORT:$PORT -p $PORT_SSL:$PORT_SSL -it arthurmilliken/ubuntu-dev

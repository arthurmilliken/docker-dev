#!/bin/bash -x
docker run --name ruby-dev -v $LOCAL_SRC:/opt/src -p $PORT:$PORT -p $PORT_SSL:$PORT_SSL -it arthurmilliken/ruby-dev

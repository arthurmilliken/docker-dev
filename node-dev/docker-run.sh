#!/bin/bash -x
docker run --name node-dev -v $LOCAL_SRC:/home/dev/src -p 80:$PORT -p 443:$PORT_SSL -it arthurmilliken/node-dev

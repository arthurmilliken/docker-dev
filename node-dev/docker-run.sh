#!/bin/bash -x
docker run --name node-dev -v $LOCAL_SRC:/home/dev/src -p 80:$PORT -it arthurmilliken/node-dev

#!/bin/bash -x
docker run --name node-dev -v $LOCAL_SRC:/home/dev/src -p 80:$PORT_HTTP -p 443:$PORT_HTTPS -it arthurmilliken/node-dev

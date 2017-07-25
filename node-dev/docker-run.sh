#!/bin/bash
docker run --name node-dev -v $LOCAL_SRC:/opt/src -p $PORT:$PORT -p $PORT_SSL:$PORT_SSL -it arthurmilliken/node-dev

#!/bin/bash -x
docker run --name python-dev -v $LOCAL_SRC:/home/dev/src -it arthurmilliken/python-dev

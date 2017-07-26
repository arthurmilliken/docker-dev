#!/bin/bash -x
docker run --name zguide-dev -v $LOCAL_SRC:/opt/src -it arthurmilliken/zguide-dev

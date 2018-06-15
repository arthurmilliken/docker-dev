# docker-node-dev
Docker image for NodeJS development on ubuntu [Github](https://github.com/arthurmilliken/docker-dev/tree/master/node-dev)

### tags

- `latest`, `8` [Dockerfile](https://github.com/arthurmilliken/docker-dev/blob/master/node-dev/v8/Dockerfile)
- `6` [Dockerfile](https://github.com/arthurmilliken/docker-dev/blob/master/node-dev/v6/Dockerfile)

### to run container
```
export LOCAL_SRC=/path/to/local/src
export PORT=8080
export PORT_SSL=8443
./docker-run.sh
```

### to resume container
```
./docker-start.sh
```

### to start a shell in a running container
```
./docker-sh.sh
```


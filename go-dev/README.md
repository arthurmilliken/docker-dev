# docker-go-dev
Docker image for Golang development on ubuntu. [Github](https://github.com/arthurmilliken/docker-dev/tree/master/go-dev)

### tags

- `latest`, `1.9.1` [Dockerfile](https://github.com/arthurmilliken/docker-dev/blob/master/go-dev/Dockerfile)

### to run container
```
GOPATH=/your/home/dir/go
LOCAL_SRC=/path/to/local/src
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


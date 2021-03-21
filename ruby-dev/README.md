# docker-ruby-dev
Docker image for Ruby development on ubuntu. [Github](https://github.com/arthurmilliken/docker-dev/tree/master/ruby-dev)

### tags

- `3`, `latest` [Dockerfile](https://github.com/arthurmilliken/docker-dev/blob/master/ruby-dev/v3/Dockerfile)
- `2.3.3` [Dockerfile](https://github.com/arthurmilliken/docker-dev/blob/master/ruby-dev/v2.3.3/Dockerfile)

## to run container
```
export LOCAL_SRC=/path/to/local/src
export PORT=3000
export PORT_SSL=3001
./docker-run.sh
```

## to resume container
```
./docker-start.sh
```

## to start a shell in a running container
```
./docker-sh.sh
```

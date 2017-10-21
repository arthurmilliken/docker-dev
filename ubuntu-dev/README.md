# docker-ubuntu-dev
Docker image for development on ubuntu

### tags

- latest, 16.04 [Dockerfile](https://github.com/arthurmilliken/docker-dev/blob/master/ubuntu-dev/Dockerfile)

### to run container:

    LOCAL_SRC=/path/to/local/src
    PORT=3000
    PORT_SSL=3001
    ./docker-run.sh

### to resume container:

    ./docker-start.sh

### to start a shell in a running container

    ./docker-sh.sh

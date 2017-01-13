# docker-live-build
Debian with live-build tools[

### Building Docker image for live-build

    docker build -t debian-live-build .

### Running live-build container

    docker run -h debian-live-build --privileged -d debian-live-build

### Copying ssh keys to live-build container

    docker exec <name> mkdir /root/.ssh
    docker cp ~/.ssh/authorized_keys <name>:/root/.ssh

### Getting live-build container IP address

    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <name>

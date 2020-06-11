#!/bin/bash

echo "$(dnf -y install dnf-plugins-core)"

echo "$(dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo)"

echo "$(dnf install docker-ce docker-ce-cli containerd.io)"

echo "Starting docker daemon $(systemctl start docker)"

echo "$(docker run -d -p 80:80 owncloud:9.1)"

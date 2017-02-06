#!/bin/bash

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + ${ip}
docker run -it     --env="DISPLAY=$ip" --volume="/private/tmp/.X11-unix:/tmp/.X11-unix:rw" yakticus/scalabridge:creative-scala ./sbt.sh
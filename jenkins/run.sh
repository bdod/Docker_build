#!/bin/bash

docker stop jenkins
docker rm jenkins
docker run --name jenkins --restart always -p 80:8080 -p 127.0.0.1:50000:50000 \
-v /var/run/docker.sock:/var/run/docker.sock \
-v jenkins_home:/var/jenkins_home \
-d jenkins

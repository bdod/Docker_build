FROM jenkins:latest

USER root

#RUN apt-get update && apt-get install jq -yf
ADD http://updates.jenkins-ci.org/latest/jenkins.war /usr/share/jenkins/ 
COPY ./docker-linux-amd64 /usr/bin/docker

RUN groupadd -g 997 -r docker && usermod -aG docker jenkins && chown -R jenkins:jenkins /usr/share/jenkins/*
USER jenkins

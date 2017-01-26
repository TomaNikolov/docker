#!/bin/bash

set -e
set -x

docker build --no-cache --pull \
             --tag "telerikappbuilder/jenkins-appbuilder-plugin:latest" .

docker tag -f "telerikappbuilder/jenkins-appbuilder-plugin:latest" jenkinsci/jenkins:latest
docker push jenkinsci/jenkins:latest



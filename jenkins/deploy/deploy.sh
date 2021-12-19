#!/bin/bash

IP=192.168.1.103

echo $IP

echo maven-jenkins > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/jenkins-remote /tmp/.auth jenkins-remote@$IP:/tmp/.auth
scp -i /opt/jenkins-remote ./jenkins/deploy/publish.sh jenkins-remote@$IP:/tmp/publish

ssh -i /opt/jenkins-remote jenkins-remote@$IP "chmod +x /tmp/publish && (/tmp/publish)"

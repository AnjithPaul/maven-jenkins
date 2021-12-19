#!/bin/bash

echo "******************"
echo "***Testing Jar***"
echo "******************"

WORKSPACE=/Users/anjithpaul/Documents/thoughtworks/Learning/jenkins/jenkins-data/jenkins_home/workspace/pipeline-maven-jenkins

docker run --rm -v $WORKSPACE/java-app:/app -v /Users/anjithpaul/.m2/:/root/.m2/ -w /app maven:3.5.4-alpine "$@"

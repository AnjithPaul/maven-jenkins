#!/bin/bash

echo "******************"
echo "***Testing Jar***"
echo "******************"

docker run --rm -v $PWD/java-app:/app -v /Users/anjithpaul/.m2/:/root/.m2/ -w /app maven:3.5.4-alpine "$@"

#!/bin/bash

echo "*********************"
echo "*** Pushing Image ***"
echo "*********************"

IMAGE=maven-jenkins

echo "*** Logging in ***"
docker login -u anjithpaul -p $PASS

echo "*** Tagging Image ***"
docker tag $IMAGE:$BUILD_TAG anjithpaul/$IMAGE:$BUILD_TAG

echo "*** Pushing Image ***"
docker push anjithpaul/$IMAGE:$BUILD_TAG

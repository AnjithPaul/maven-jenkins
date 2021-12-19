#!/bin/bash

export IMAGE=$(sed -n '1p' /tmp/.auth)
echo $IMAGE
export TAG=$(sed -n '2p' /tmp/.auth)
echo $TAG
export PASS=$(sed -n '3p' /tmp/.auth)
echo $PASS

docker login -u anjithpaul -p $PASS

cd ~/maven && docker-compose up -d

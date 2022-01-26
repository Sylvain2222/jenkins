#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth produser@192.168.1.29:/tmp/.auth 
scp -i /opt/prod ./jenkins/build/publish.sh produser@192.168.1.29:/tmp/
ssh -i /opt/prod produser@192.168.1.29 "/tmp/publish.sh"

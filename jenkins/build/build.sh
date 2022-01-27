#!/bin/bash


WORKSPACE=/home/sylvain/.jenkins/workspace/pipeline-docker-maven/java-app
#copy the new jar to the build location
sudo cp -f $WORKSPACE/target/*.jar jenkins/build

echo "*********************** "
echo " BUILDING DOCKER IMAGE "
echo "*********************** "

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache

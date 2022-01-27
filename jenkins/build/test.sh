#!/bin/bash

WORKSPACE=/home/sylvain/.jenkins/workspace/pipeline-docker-maven/java-app
echo "****** TESTING THE CODE ******"
cd $WORKSPACE
mvn test
cd $WORKSPACE

#!/bin/bash
echo "******************************"
echo "MAVEN IS BUILDING THE JAR FILE"
echo "******************************"


WORKSPACE=/home/sylvain/.jenkins/workspace/pipeline-docker-maven/java-app
cd $WORKSPACE
mvn -B -DskipTests clean package
cd /home/sylvain/jenkinsdata/pipeline/


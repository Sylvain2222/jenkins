#!/bin/bash

echo "BUILDING THE JAR FILE"
cd /home/sylvain/jenkinsdata/pipeline/java-app/
mvn -B -DskipTests clean package
cd /home/sylvain/jenkinsdata/pipeline/

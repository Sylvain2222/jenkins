#!/bin/bash

echo "*********************"
echo "** PUSHING IMAGE ****"
echo "*********************"

IMAGE="maven-project"

echo "*** Logging in ***"
docker login -u sylvain22 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG sylvain22/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push sylvain22/$IMAGE:$BUILD_TAG

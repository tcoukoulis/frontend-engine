#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

. ./.env
. ./scripts/resources/angular

function copy () {
    CONTAINER_ID=$(docker create $APP_TAG) && \
        docker cp $CONTAINER_ID:/srv/$APP_PATH services/ && \
        docker rm $CONTAINER_ID
}

function build-angular () {
    docker build --build-arg APP=$APP \
    	    --build-arg APP_VERSION=$APP_VERSION \
            --build-arg GIT_EMAIL=$GIT_EMAIL \
            --build-arg GIT_USER="$GIT_USER" \
	    -t $APP_TAG $BUILD_SOURCE && \
            copy
}

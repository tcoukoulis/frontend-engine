#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

declare -a frontends=("react" "vue")

# TODO: provide interface for building only specified frontends
function build () {
    for frontend in "${frontends[@]}"
    do
	. ./scripts/build/${frontend}.sh
        build-${frontend}
    done
}

build

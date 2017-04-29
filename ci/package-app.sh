#!/bin/bash

set -e -x

pushd concourse-java
    mvn package
    cp -r target/ ../target
popd

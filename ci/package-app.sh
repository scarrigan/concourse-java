#!/bin/bash

set -e -x

pushd concourse-java
    mvn package
    cp -r target/*.jar ../built-app
    cp Dockerfile ../built-app
popd

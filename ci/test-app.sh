#!/bin/bash

set -e -x

pushd concourse-java
    mvn test
popd

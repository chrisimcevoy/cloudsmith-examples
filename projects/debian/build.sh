#!/bin/bash

cd "projects/debian/src"

make

fpm -f -s dir -t deb -n cloudsmith-debian-example -v 1.0.${TRAVIS_BUILD_NUMBER} .

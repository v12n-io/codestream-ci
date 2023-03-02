#!/bin/sh
VERSION=$(<VERSION)
docker build . -t v12nio/codestream-ci:latest -t v12nio/codestream-ci:v$VERSION --build-arg VERSION=$VERSION
docker login --username $DOCKERUSER --password $DOCKERPASS
docker push v12nio/codestream-ci:latest
docker push v12nio/codestream-ci:v$VERSION
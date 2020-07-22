#!/usr/bin/env bash
docker build . -t borgified/markdownlint:latest
VERSION=$(docker run borgified/markdownlint:latest -V)
docker tag borgified/markdownlint:latest borgified/markdownlint:$VERSION
docker push borgified/markdownlint:latest
docker push borgified/markdownlint:$VERSION

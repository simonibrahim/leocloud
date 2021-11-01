#!/usr/bin/env bash

UID=$(id -u)
GID=$(id -g)

docker run --rm -v $(pwd):/documents/ --user $UID:$GID asciidoctor/docker-asciidoctor asciidoctor -r asciidoctor-diagram -a docinfo=shared -a linkcss -a copycss -D html index.adoc
cp -r css/ images/ html/
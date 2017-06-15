#!/bin/bash

VERSION=${FILEBEAT_VER:-5.4.1}
curl -o filebeat.tar.gz https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${VERSION}-linux-x86_64.tar.gz && \
tar xvf filebeat.tar.gz && \
docker build --build-arg VERSION=${VERSION} -t filebeat:${VERSION} .
rm -rf filebeat.tar.gz filebeat-${VERSION}-linux-x86_64


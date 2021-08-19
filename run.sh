#!/bin/bash

docker stop nginx-test
docker rm nginx-test

docker run -id --name=nginx-test \
    -p 50000:50000 \
    -p 50001:50001 \
    -v ./conf/nginx.conf:/etc/nginx/nginx.conf \
    -v ./conf/tcpconf/tcp.conf:/etc/nginx/tcpconf/tcp.conf \
    -v ./logs:/var/log/nginx \
    nginx:latest


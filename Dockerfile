# golang builder image 
FROM golang:1.14.2-alpine3.11 as builder

# getting dependencies and building go binary
RUN apk --no-cache add \
    git \
    libc6-compat && \
    export CGO_ENABLED=0 && \
    go get -tags netgo -a -v github.com/RagingTiger/simple-go-webserver

# base image
FROM ubuntu:16.04

# dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    supervisor && \
    rm -rf /var/lib/apt/lists/* 

# get src and conf
COPY --from=builder /go/bin/* /usr/local/bin/
COPY src/ /root/
COPY conf/ /etc/supervisor/conf.d/

ENV BASH_ENV=/root/amphprn.sh
ENV ENV=/root/amphprn.sh


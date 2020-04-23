# base image
FROM ubuntu:16.04

# dependencies
RUN apt-get update && \
    rm -rf /var/lib/apt/lists/*




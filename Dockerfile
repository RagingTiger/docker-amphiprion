# base image
FROM ubuntu:16.04

# dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        supervisor && \
    rm -rf /var/lib/apt/lists/*




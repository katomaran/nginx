# Set the base image to ubuntu 20.04
FROM ubuntu:20.04

LABEL maintainer="tech@katomaran.com"

RUN apt-get clean -q && \ 
    apt-get update -q && \ 
    apt-get install -y --no-install-recommends nginx && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80
EXPOSE 443


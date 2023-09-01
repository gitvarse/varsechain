FROM debian:stretch
LABEL maintainer="Varsechain Developers <dev@varsechain.org>"
LABEL description="Dockerised VarsechainCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/

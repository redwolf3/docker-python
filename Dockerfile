FROM ubuntu:trusty
MAINTAINER admin@steven-west.com

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        python3=3.4.0-0ubuntu2 \
    && apt-get remove --purge -y $BUILD_PACKAGES $(apt-mark showauto) \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT /bin/bash

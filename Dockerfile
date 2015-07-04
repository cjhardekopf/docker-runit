FROM debian:wheezy
MAINTAINER Chris Hardekopf <cjh@ygdrasill.com>

# Install runit
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y runit --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Add the init script
ADD init /opt/init

# Set the ENTRYPOINT
#ENTRYPOINT [ "/opt/init" ]

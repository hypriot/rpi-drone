FROM resin/rpi-raspbian:jessie

MAINTAINER Andreas Eiermann <andreas@hypriot.com>

RUN apt-get update && \
apt-get install -y libc6 && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

ADD content/drone /usr/local/bin/drone
ADD content/droned /usr/local/bin/droned
ADD content/lib /lib

ENV DRONE_SERVER_PORT :80
EXPOSE 80
VOLUME ["/var/lib/drone"]
ENTRYPOINT ["/usr/local/bin/droned"]

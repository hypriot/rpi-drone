FROM resin/rpi-raspbian:jessie

MAINTAINER Andreas Eiermann <andreas@hypriot.com>

ADD content/drone /usr/local/bin/drone
ADD content/droned /usr/local/bin/droned
ADD content/lib /lib

ENV DRONE_SERVER_PORT :80
EXPOSE 80
VOLUME ["/var/lib/drone"]
ENTRYPOINT ["/usr/local/bin/droned"]

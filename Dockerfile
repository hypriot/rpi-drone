FROM hypriot/rpi-alpine

MAINTAINER Andreas Eiermann <andreas@hypriot.com>

ADD drone /usr/local/bin/drone
ADD droned /usr/local/bin/droned
ADD lib /lib

ENV DRONE_SERVER_PORT :80
EXPOSE 80
VOLUME ["/var/lib/drone"]
ENTRYPOINT ["/usr/local/bin/droned"]

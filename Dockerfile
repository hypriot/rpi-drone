#FROM ubuntu / resin/rpi-raspbian
#
# RUN apt-get update && apt-get install -y libc6 libgcc1-dbg && apt-get clean
#
FROM hypriot/rpi-alpine-scratch

MAINTAINER Andreas Eiermann <andreas@hypriot.com>

COPY content/drone_static /usr/local/bin/drone
COPY content/etc /
#COPY content/lib /lib

ENV DRONE_SERVER_PORT 0.0.0.0:80
ENV DRONE_DATABASE_DATASOURCE /var/lib/drone/drone.sqlite
#ENV DRONE_SERVER_PORT :80
#VOLUME ["/var/lib/drone"]

EXPOSE 80
ENTRYPOINT ["/usr/local/bin/drone"]

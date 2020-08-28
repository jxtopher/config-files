# see example: https://medium.com/nagoya-foundation/running-a-dns-server-in-docker-61cc2003e899
FROM debian:buster

ARG TERM=xterm
ARG LC_ALL=C.UTF-8
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
RUN apt-get install -y --no-install-recommends apt-utils apt-transport-https
RUN apt-get install -y dnsutils vim
RUN apt-get install -y bind9 bind9-doc bind9utils

# Enable IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

EXPOSE 53/udp 53/tcp 10000/tcp

#CMD ["/bin/bash", "-c", "while :; do sleep 10; done"]
ENTRYPOINT service bind9 restart ; while true ; do sleep 100; done;

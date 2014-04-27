# Base image
#
# VERSION   0.1
FROM        debian:unstable
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN apt-get update && apt-get install -y openvpn
ONBUILD ADD ca.crt      /etc/openvpn/
ONBUILD ADD dh2048.pem  /etc/openvpn/
ONBUILD ADD server.conf /etc/openvpn/
ONBUILD ADD server.crt  /etc/openvpn/
ONBUILD ADD server.key  /etc/openvpn/
ONBUILD ADD ta.key      /etc/openvpn/

ONBUILD RUN chown -R root:root /etc/openvpn/*
ONBUILD RUN chmod 600 /etc/openvpn/*


CMD ["/usr/sbin/openvpn", \
     "--cd", "/etc/openvpn", \
     "--config", "/etc/openvpn/server.conf"]

# Base image
#
# VERSION   0.1
FROM        debian:unstable
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN apt-get update && apt-get install -y openvpn iptables
ADD paultag-openvpnd /usr/bin/

CMD ["paultag-openvpnd"]

# Base image
#
# VERSION   0.1
FROM        debian:unstable
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN apt-get update && apt-get install -y apt-cacher-ng
CMD ["/usr/sbin/apt-cacher-ng", "ForeGround=1"]

# kgb image
#
# VERSION   0.1

FROM        debian:testing
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>
RUN apt-get update && apt-get install -y kgb-bot
CMD ["kgb-bot", "--foreground", "--config-dir", "/kgb/"]

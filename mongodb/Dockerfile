# Base image
#
# VERSION   0.1
FROM        debian:testing
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN apt-get update && apt-get install mongodb -y
RUN sed 's/127.0.0.1/0.0.0.0/g' -i /etc/mongodb.conf

CMD ["mongod", "--config", "/etc/mongodb.conf"]

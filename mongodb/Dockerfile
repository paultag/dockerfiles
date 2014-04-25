# Base image
#
# VERSION   0.1
FROM        debian:testing
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

ADD paultag-mongodb /usr/local/bin/
RUN apt-get update && apt-get install mongodb -y
RUN sed 's/127.0.0.1/0.0.0.0/g' -i /etc/mongodb.conf

CMD ["/usr/local/bin/paultag-mongodb"]

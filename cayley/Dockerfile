# Cayley dockerfile
#
# VERSION   0.1
FROM        debian:unstable
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN apt-get update && apt-get install -y \
    bzr git golang-go

RUN mkdir -p /opt/cayley/ /opt/cayley/gocode
ENV GOPATH /opt/cayley/gocode/

WORKDIR /opt/cayley/
RUN git clone git://github.com/google/cayley.git
WORKDIR /opt/cayley/cayley/

RUN go get -d
RUN go build

ENTRYPOINT ["/opt/cayley/cayley/cayley"]

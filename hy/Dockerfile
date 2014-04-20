# Base image
#
# VERSION   0.1
FROM        debian:testing
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN apt-get update && apt-get install -y python3.4 python3-pip git
RUN git clone git://github.com/hylang/hy.git /opt/hylang/hy
RUN python3.4 /usr/bin/pip3 install -r /opt/hylang/hy/requirements.txt
RUN python3.4 /usr/bin/pip3 install -e /opt/hylang/hy

CMD ["hy"]

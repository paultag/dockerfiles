# Base image
#
# VERSION   0.1
FROM        debian:testing
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN mkdir -p /opt/hylang/
RUN apt-get update && apt-get install -y python3.4 python3-pip git
RUN cd /opt/hylang/; git clone git://github.com/hylang/hy.git
RUN cd /opt/hylang/hy; pip3 install -r requirements.txt
RUN cd /opt/hylang/hy; pip3 install -e .

CMD ["hy"]

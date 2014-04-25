# Base image
#
# VERSION   0.1
FROM        paultag/acid:latest
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN mkdir -p /opt/hylang/
RUN apt-get update && apt-get install python3-lxml -y
RUN cd /opt/hylang/; git clone git://github.com/paultag/snitch.git
RUN cd /opt/hylang/snitch; python3.4 /usr/bin/pip3 install -r requirements.txt
RUN cd /opt/hylang/snitch; python3.4 /usr/bin/pip3 install -e .

CMD ["hy", "/snitch/default.hy"]

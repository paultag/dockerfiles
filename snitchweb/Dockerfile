# Base image
#
# VERSION   0.1
FROM        paultag/uwsgi:latest
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN mkdir -p /opt/hylang/
RUN apt-get update && apt-get install -y \
    python2.7 python-pip \
    uwsgi uwsgi-plugin-python
RUN cd /opt/hylang/; git clone git://github.com/paultag/snitch.git

RUN cd /opt/hylang/hy python2.7 /usr/bin/pip install -e .
RUN cd /opt/hylang/snitch; python2.7 /usr/bin/pip install -r requirements-site.txt
RUN cd /opt/hylang/snitch; python2.7 /usr/bin/pip install -e .

ADD uwsgi.ini /etc/uwsgi/apps-enabled/
CMD ["uwsgi", "--ini", "/etc/uwsgi/apps-enabled/uwsgi.ini"]

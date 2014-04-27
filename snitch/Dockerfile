# Base image
#
# VERSION   0.1
FROM        paultag/acid:latest
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN mkdir -p /opt/hylang/
RUN apt-get update && apt-get install -y \
    python2.7 python-pip \
    python3-lxml \
    uwsgi uwsgi-plugin-python
RUN cd /opt/hylang/; git clone git://github.com/paultag/snitch.git

# Install Python 3 bits globally.
RUN cd /opt/hylang/snitch; python3.4 /usr/bin/pip3 install -r requirements.txt
RUN cd /opt/hylang/snitch; python3.4 /usr/bin/pip3 install -e .

# Install Python 2 bits globally. (flask, etc)
RUN cd /opt/hylang/snitch; python2.7 /usr/bin/pip install hy pymongo
RUN cd /opt/hylang/snitch; python2.7 /usr/bin/pip install -r requirements-site.txt
RUN cd /opt/hylang/snitch; python2.7 /usr/bin/pip install -e .


ADD uwsgi.ini /etc/uwsgi/apps-enabled/

CMD ["uwsgi", "--ini", "/etc/uwsgi/apps-enabled/uwsgi.ini"]

# uwsgi image
#
# VERSION   0.1

FROM        debian:unstable
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN apt-get update && apt-get install -y uwsgi
ONBUILD ADD uwsgi.ini /etc/uwsgi/apps-enabled/uwsgi.ini

CMD ["uwsgi", "--ini", "/etc/uwsgi/apps-enabled/uwsgi.ini"]

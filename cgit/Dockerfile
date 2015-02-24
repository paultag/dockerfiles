FROM        paultag/uwsgi:latest
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN apt-get update && apt-get install -y cgit

RUN adduser \
    --system \
    --home=/var/lib/nobody \
    --shell=/bin/bash \
    --no-create-home \
    --group \
    http

RUN mkdir -p /run/uwsgi/
RUN chown -R http:http /run/uwsgi/

USER http

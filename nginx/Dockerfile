# uwsgi image
#
# VERSION   0.1

FROM        debian:unstable
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN apt-get update && apt-get install -y nginx
RUN rm -rf /etc/nginx/sites-*/*

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf", "-g", "daemon off;"]

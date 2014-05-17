# Postgres image
#
# VERSION   0.1
FROM        debian:unstable
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>
RUN apt-get update && apt-get install -y quassel-core libqt4-sql-psql sudo

ADD paultag-quasselcore /usr/local/bin/
RUN rm -rf /var/lib/quassel
RUN ln -s /quassel /var/lib/quassel

CMD ["/usr/local/bin/paultag-quasselcore", "--select-backend=PostgreSQL"]

# Postgres image
#
# VERSION   0.1
FROM        debian:unstable
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>
RUN apt-get update && apt-get install -y quassel-core libqt4-sql-psql

ADD paultag-quasselcore /usr/local/bin/

CMD ["/usr/local/bin/paultag-quasselcore", "--select-backend=PostgreSQL"]

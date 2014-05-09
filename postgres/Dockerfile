# Postgres image
#
# VERSION   0.1
FROM        debian:testing
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>
RUN apt-get update && apt-get install -y postgresql-9.3

ADD paultag-psqld /usr/local/bin/

USER postgres

RUN /etc/init.d/postgresql start && \
    psql --command "ALTER USER postgres WITH SUPERUSER PASSWORD 'postgres';"

USER root

RUN echo "host all  all    172.17.0.0/16  md5" >> /etc/postgresql/9.3/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.3/main/postgresql.conf
CMD ["/usr/local/bin/paultag-psqld"]

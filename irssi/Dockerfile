FROM        debian:unstable
MAINTAINER  Paul R. Tagliamonte <paultag@debian.org>

RUN apt-get update && apt-get install -y \
    build-essential \
    pkg-config \
    libglib2.0-dev \
    libssl-dev \
    irssi \
    irssi-dev \
    git \
    adduser

RUN adduser \
    --system \
    --home=/irssi \
    --shell=/bin/bash \
    --no-create-home \
    --group \
    irssi

RUN mkdir /tmp/foo
WORKDIR /tmp/foo
RUN git clone https://github.com/phhusson/quassel-irssi.git
WORKDIR /tmp/foo/quassel-irssi
RUN git submodule init
RUN git submodule update
RUN make -C core
RUN mkdir /usr/lib/quassel_irssi/
RUN cp core/libquassel_core.so /usr/lib/quassel_irssi/

RUN apt-get purge build-essential pkg-config -y
RUN apt-get autoremove -y && apt-get autoclean -y

ADD paultag-irssi /usr/local/bin/

WORKDIR /irssi

CMD ["paultag-irssi"]

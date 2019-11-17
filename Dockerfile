FROM alpine:latest
# Stress Version can be found on offcial website of stress
# https://people.seas.harvard.edu/~apw/stress/
ENV RELEASE_VERSION=1.0.4 \
    SHELL=/bin/bash

RUN \
  apk add --update bash g++ make curl && \
  curl -o /tmp/stress-${RELEASE_VERSION}.tgz https://fossies.org/linux/privat/stress-${RELEASE_VERSION}.tar.gz && \
  cd /tmp && tar xvf stress-${RELEASE_VERSION}.tgz && rm /tmp/stress-${RELEASE_VERSION}.tgz && \
  cd /tmp/stress-${RELEASE_VERSION} && \
  ./configure && make && make install && \
  apk del g++ make curl && \
  rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

CMD ['/usr/local/bin/stress']

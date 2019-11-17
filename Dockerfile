FROM alpine:latest
# Stress Version can be found on offcial website of stress
# https://people.seas.harvard.edu/~apw/stress/
ENV STRESS_VERSION=1.0.4 \
    SHELL=/bin/bash

RUN \
  apk add --update bash g++ make curl && \
  curl -o /tmp/stress-${STRESS_VERSION}.tgz https://fossies.org/linux/privat/stress-${STRESS_VERSION}.tar.gz && \
  cd /tmp && tar xvf stress-${STRESS_VERSION}.tgz && rm /tmp/stress-${STRESS_VERSION}.tgz && \
  cd /tmp/stress-${STRESS_VERSION} && \
  ./configure && make && make install && \
  apk del g++ make curl && \
  rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

CMD ['/usr/local/bin/stress']

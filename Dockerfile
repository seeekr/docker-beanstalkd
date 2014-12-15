FROM ubuntu:14.04

MAINTAINER Denis Andrejew <da.colonel@gmail.com>

RUN apt-get update \
    && apt-get -yqq dist-upgrade \
    && apt-get install -yqq beanstalkd \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /var/lib/beanstalkd

EXPOSE 11300

CMD /usr/bin/beanstalkd -b /var/lib/beanstalkd

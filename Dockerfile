FROM ubuntu:16.04
MAINTAINER FredB <fred.blaise@gmail.com>

USER root

RUN apt-get update
RUN apt-get -y install kturtle

VOLUME ["/data"]

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

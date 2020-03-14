FROM debian:buster-slim

MAINTAINER Dion Borsboom <dion.borsboom@incentro.com>

RUN apt-get update \
    && apt-get install -y wget bzip2

RUN wget https://download.foldingathome.org/releases/public/release/fahclient/debian-testing-64bit/v7.4/fahclient_7.4.4_amd64.deb \
    && mkdir -p /etc/fahclient/ \
    && touch /etc/fahclient/config.xml \
    && dpkg --install fahclient_7.4.4_amd64.deb || exit 0

ENTRYPOINT FAHClient
CMD FAHClient --user=Incentro --team=238318 --gpu=false --smp=true --priority=low --cpu-usage=90
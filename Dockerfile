FROM ubuntu:trusty
MAINTAINER Reuben Mannell "reuben@reubit.com"

RUN apt-get update && apt-get install -yq wget curl

RUN useradd --system --uid 797 -M --shell /usr/sbin/nologin plex

RUN curl https://plex.tv/downloads -s | grep -i Ubuntu64 | grep -oP '[^"]+_amd64.deb' | xargs wget -O plexmediaserver.deb && dpkg -i plexmediaserver.deb
RUN apt-get install -fyq
RUN rm -f plexmediaserver.deb

RUN mkdir /config
RUN chown plex:plex /config

VOLUME /media
VOLUME /config

USER plex
EXPOSE 32400

ENV PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR /config
ENV PLEX_MEDIA_SERVER_HOME /usr/lib/plexmediaserver
ENV LD_LIBRARY_PATH /usr/lib/plexmediaserver
ENV TMPDIR /tmp

WORKDIR /usr/lib/plexmediaserver

CMD ./Plex\ Media\ Server

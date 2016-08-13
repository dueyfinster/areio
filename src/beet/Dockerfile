FROM python:2.7-alpine
MAINTAINER Neil Grogan <neil@grogan.ie>

ENV BEETS_VERSION 1.3.19
ENV BEETSDIR /config/beet
ENV ALP_PKGS chromaprint@testing lockfile-progs gstreamer0.10 py-gst0.10 py-gobject
ENV PIP_PKGS beets==$BEETS_VERSION pyacoustid requests pylast rgain

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk --update add $ALP_PKGS && \
	pip install $PIP_PKGS && \ 
	touch /var/log/beets

COPY beets-crontab /var/spool/cron/crontabs/root

VOLUME ["/config", "/input", "/output"]

CMD crond -l 2 -b && tail -f /var/log/beets
FROM python:2.7-alpine
MAINTAINER Neil Grogan <neil@grogan.ie>

ENV BEETS_VERSION 1.3.19

VOLUME ["/input", "/output"]

COPY config.yaml /root/.config/beets/config.yaml

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk --update add chromaprint@testing lockfile-progs gstreamer0.10 py-gst0.10 && \
	pip install beets==$BEETS_VERSION pyacoustid requests pylast && \ 
	touch /var/log/beets && \
	touch /root/musiclibrary.blb

COPY beets-crontab /var/spool/cron/crontabs/root

CMD crond -l 2 -b && tail -f /var/log/beets
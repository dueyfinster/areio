FROM linuxserver/transmission
COPY transmission.sh /opt/transmission.sh
RUN apk add --no-cache transmission-cli && \
	chmod +x /opt/transmission.sh

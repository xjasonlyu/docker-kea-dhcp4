FROM alpine:latest
LABEL org.opencontainers.image.source="https://github.com/xjasonlyu/docker-kea-dhcp4"

RUN apk add --no-cache kea-dhcp4 \
	&& mkdir -p /run/kea

ENTRYPOINT [ "/usr/sbin/kea-dhcp4" ]
CMD [ "-c", "/etc/kea/kea-dhcp4.conf" ]

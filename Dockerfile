FROM alpine:latest

RUN apk add --no-cache kea-dhcp4 \
	&& mkdir -p /run/kea

ENTRYPOINT [ "/usr/sbin/kea-dhcp4" ]
CMD [ "-c", "/etc/kea/kea-dhcp4.conf" ]

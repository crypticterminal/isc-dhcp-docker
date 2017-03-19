FROM alpine:3.5

ENV INTERFACES=

RUN apk add --update --no-cache dhcp && \
    touch /var/lib/dhcp/dhcp.leases

VOLUME /var/lib/dhcp

CMD ["dhcpd", "-f", "-d", "$INTERFACES"]

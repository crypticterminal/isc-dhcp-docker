FROM alpine:3.5

ENV DOCKERIZE_VERSION=v0.3.0 \
    INTERFACES=

RUN apk add --update --no-cache dhcp && \
    touch /var/lib/dhcp/dhcp.leases

VOLUME /var/lib/dhcp

CMD ["dhcp", "-f", "-d", "$INTERFACES"]

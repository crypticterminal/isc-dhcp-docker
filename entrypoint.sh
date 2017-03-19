#!/bin/sh

touch /var/lib/dhcp/dhcpd.leases
[ "$(printf '%s' "$@")" = "" ] && exec dhcpd -f -d $INTERFACES
exec "$@"

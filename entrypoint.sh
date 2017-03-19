#!/bin/sh

touch /var/lib/dhcp/dhcpd.leases

if [ "$@" = "" ]; then
  exec dhcpd -f -d $INTERFACES
fi

exec "$@"

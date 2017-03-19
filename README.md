# Dockerized ISC-DHCP Server

Barebones ISC-DHCP server in a container.

## Running

```sh
docker run --name=dhcp                   \
  --network=host                         \
  -v /path/to/dhcpd.conf:/etc/dhcpd.conf \
  -v dhcp-data:/var/lib/dhcp             \
  -e INTERFACES=eth0                     \
  joshbenner/isc-dhcp
```

## Configuration

The container does not attempt to provide much configuration support through
environment variables, due to fact that even basic DHCP configurations often
require a lot of detail that is difficult to represent as key/value pairs.

Instead: mount your config (as in the run example), or bake it in:

```docker
FROM joshbenner/isc-dhcp

COPY dhcpd.conf /etc/dhcpd.conf

CMD ["dhcpd", "-f", "-d", "$INTERFACES"]
```

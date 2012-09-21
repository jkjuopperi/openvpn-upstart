#!/bin/sh

INSTALLFLAGS="-o root -g root"

# Install upstart scripts
install -d $INSTALLFLAGS -m 0755 /etc/init
install $INSTALLFLAGS -m 0644 openvpn.conf /etc/init/
install $INSTALLFLAGS -m 0644 openvpns.conf /etc/init/

install -d $INSTALLFLAGS -m 0755 /usr/local/sbin
install $INSTALLFLAGS -m 0755 vpnctl /usr/local/sbin/


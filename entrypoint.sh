#!/bin/sh
set -euo pipefail
chown -R bitcoin:bitcoin /var/lib/bitcoin
exec /sbin/chpst -u bitcoin:bitcoin /usr/bin/bitcoind \
  -conf=/etc/bitcoin.conf \
  -datadir=/var/lib/bitcoin \
  -server \
  -logips \
  -printtoconsole \
  -rpcport=8332 \
  -rpcallowip=0.0.0.0/0

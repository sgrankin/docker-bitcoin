#!/bin/sh
set -euo pipefail
chown -R bitcoin:bitcoin /var/lib/bitcoin
exec /sbin/chpst -u bitcoin:bitcoin \
  /usr/bin/bitcoind \
  -conf=/etc/bitcoin.conf \
  -datadir=/var/lib/bitcoin \
  -rpcport=83332 \
  -daemon=0 \
  -server \
  -printtoconsole \
  -logips

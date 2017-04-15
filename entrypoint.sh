#!/bin/sh
set -euo pipefail
: ${UID:=$(id -u nobody)}
: ${GID:=$(id -g nobody)}

chown -R $UID:$GID /var/lib/bitcoin
exec /sbin/chpst -u :$UID:$GID /usr/bin/bitcoind \
  -conf=/etc/bitcoin.conf \
  -datadir=/var/lib/bitcoin \
  -server \
  -logips \
  -printtoconsole \
  -rpcport=8332 \
  -rpcallowip=0.0.0.0/0

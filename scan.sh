#!/bin/bash

if [ -z "$SCANNER_IPADDR" ]
then
  echo "SCANNER_IPADDR environment variable is empty."
  exit
fi

echo "[devices]

myscanner.udi    = esci:networkscan://$SCANNER_IPADDR:1865
myscanner.vendor = Epson" > /etc/imagescan/imagescan.conf

imagescan "$@"

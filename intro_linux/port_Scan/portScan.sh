#!/bin/bash

for port in $(seq 1 65535); do
  (echo '' > /dev/tcp/127.0.0.1/$port) 2>/dev/null && echo "[+] $port - OPEN" &
done; wait

#(echo '' > /dev/tcp/127.0.0.1/$port) 2>/dev/null && echo "[+] $port - Open"
#
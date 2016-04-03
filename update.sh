#!/bin/bash
export LC_ALL=en_US.UTF-8
curl https://vpn3.ffnord/ffmap-backend-data/nodes.json | /usr/bin/python3 /usr/local/bin/alfred2zone.py > /etc/bind/zones/nodes.ffnord.zone
/usr/sbin/rndc reload

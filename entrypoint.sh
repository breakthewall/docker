#!/bin/bash

rm -f /var/run/docker.pid

# Avoid loosing DNS resolution
cat /resolv.conf >> /etc/resolv.conf

service docker start
update-rc.d docker enable

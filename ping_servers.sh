#!/bin/bash

# Loop through all IP addresses in the 172.16.17.x subnet
for x in {0..255}; do
    ip="172.16.17.$x"
    
    # Ping the IP address with 1 packet and a timeout of 1 second
    if ping -c 1 -W 1 "$ip" &> /dev/null; then
        echo "Server $ip is up and running"
    else
        echo "Server $ip is unreachable"
    fi
done

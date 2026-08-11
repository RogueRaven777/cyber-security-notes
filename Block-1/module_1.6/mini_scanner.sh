#!/bin/bash

scan_network() {
    echo "Starting live ping scan for network: $1.x"
    for host in {1..5}
    do
        ip="$1.$host"
        if ping -c 1 -W 1 $ip > /dev/null 2>&1; then
            echo "[+] Host $ip is UP!"
        else
            echo "[-] Host $ip is DOWN."
        fi
    done
}

if [ -z "$1" ]; then
    echo "Error: Please provide network prefix! (Example: 192.168.1)"
else
    scan_network $1
fi

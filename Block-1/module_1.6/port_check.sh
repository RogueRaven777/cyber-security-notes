#!/bin/bash

port=$1

if [ -z "$port" ]; then
    echo "Usage: ./port_check.sh <port_number>"
elif [ "$port" -eq 22 ]; then
    echo "Port $port: SSH Service running."
elif [ "$port" -eq 80 ]; then
    echo "Port $port: HTTP Web Service running."
elif [ "$port" -eq 443 ]; then
    echo "Port $port: HTTPS Secure Web Service running."
else
    echo "Port $port: Unknown or Custom Service."
fi

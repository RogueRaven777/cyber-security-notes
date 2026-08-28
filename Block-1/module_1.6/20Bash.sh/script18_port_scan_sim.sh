#!/bin/bash
echo "Enter target IP:"
read ip
echo "Enter port:"
read port
nc -zv -w 2 "$ip" "$port"

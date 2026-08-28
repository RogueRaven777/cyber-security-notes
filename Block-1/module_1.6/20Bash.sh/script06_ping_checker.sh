#!/bin/bash
echo "Enter IP or domain to ping:"
read target
if ping -c 1 "$target" > /dev/null; then
echo "Target $target is ONLINE!"
else
echo "Target $target is OFFLINE or blocking ping!"
fi

#!/bin/bash
echo "Enter password:"
read pass
if [ "$pass" == "admin123" ]; then
echo "Access Granted!"
else
echo "Access Denied!"
fi

#!/bin/bash
if [ "$EUID" -ne 0 ]; then
echo "Please run this script as root (sudo)!"
else
echo "You are Root! Access allowed."
fi

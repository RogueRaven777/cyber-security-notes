#!/bin/bash
# Network Capture Script
echo "Capturing DNS packets using TShark..."
sudo tshark -i eth0 -Y "dns"

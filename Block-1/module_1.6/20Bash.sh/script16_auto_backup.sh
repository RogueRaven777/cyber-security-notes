#!/bin/bash
echo "Enter folder name to backup:"
read folder
tar -czf backup.tar.gz "$folder"
echo "Backup saved as backup.tar.gz"

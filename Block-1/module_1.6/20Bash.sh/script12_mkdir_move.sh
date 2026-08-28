#!/bin/bash
echo "Enter folder name to create:"
read folder
mkdir -p "$folder"
echo "Folder created: $folder"

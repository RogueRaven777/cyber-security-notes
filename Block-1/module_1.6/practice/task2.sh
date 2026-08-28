#!/bin/bash
read -p "Enter File Name: " filename
if [ -f "$filename" ]; then
	echo "File exists! Safe to proceed"
else
	echo "Alert: File not Found"
fi

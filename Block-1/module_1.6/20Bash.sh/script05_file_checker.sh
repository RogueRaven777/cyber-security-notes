#!/bin/bash
echo "Enter filename to check:"
read filename
if [ -f "$filename" ]; then
echo "File exist!"
else
echo "File does not exist"
fi

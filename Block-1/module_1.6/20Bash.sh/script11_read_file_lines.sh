#!/bin/bash
echo "Enter file name to read:"
read filename
while read line; do
echo "Line content: $line"
done < "$filename"

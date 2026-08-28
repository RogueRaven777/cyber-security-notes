#!/bin/bash

count=5

echo "Starting countdown..."

while [ $count -gt 0 ]
do
    echo "Countdown: $count"
    count=$((count - 1))
done

echo "Blast off! Scan complete."

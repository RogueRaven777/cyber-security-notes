#!/bin/bash
echo "Enter main domain:"
read domain
for sub in www mail admin dev
do
echo "Checking: $sub.$domain"
done

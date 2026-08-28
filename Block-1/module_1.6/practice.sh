#!/bin/bash

ping -c 4 google.com
if [ $? -eq 0 ];then
	echo "Server is UP"
else
	echo "Server is Down"
fi

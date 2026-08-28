#!/bin/bash
ping -c 1 google.com > /dev/null
if [ $? -eq 0 ]; then
	echo "Success! Google is reachable."
else
	echo "Failed to reach Google."
fi

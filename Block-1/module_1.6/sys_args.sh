#!/bin/bash
echo "Script Name: $0"
echo "Current User: $USER"
echo "Total Arguments Passed: $#"
echo "All Arguments: $@"
if [ "$#" -lt 2 ]; then
	echo "Warning: You need to pass at least 2 arguments!"
else
	echo "First Argument: $1"
	echo "Second Argument: $2"
fi

#!/bin/bash
check_target() {
	echo "Performing scan on target: $1"
}
echo "Enter target:"
read my_target
check_target "$my_target"


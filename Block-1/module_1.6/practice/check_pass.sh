#!/bin/bash
read -p "Enter Secret Password: " user_pass
if [ "$user_pass" = "cyber123" ]; then
	echo "Access Granted! Welcome, Agent!"
else
	echo "Access Denied! Intruder Alert!"
fi 

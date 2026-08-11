#!/bin/bash

# System Variable & User Input Practice
echo "=== Welcome to Bash Scripting ==="
echo "Current User: $USER"
echo "Current Directory: $PWD"

read -p "Enter Target Domain/IP: " target
echo "Targeting: $target"

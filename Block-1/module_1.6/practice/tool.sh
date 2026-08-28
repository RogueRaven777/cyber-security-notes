#!/bin/bash
read -p "Enter filename to search: " filename
if [ -f "$filename" ]; then
	echo "[+] SUCCESS: file '$filename' exists on system!"
	echo "[*] File Content:"
	cat "$filename"
else
	echo "[-] WARNING: File '$filename' does NOT exist!"
fi

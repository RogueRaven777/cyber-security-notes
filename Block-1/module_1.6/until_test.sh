#!/bin/bash

password=""

until [ "$password" == "admin123" ]
do
    read -p "Enter secret password: " password
    if [ "$password" != "admin123" ]; then
        echo "[-] Wrong password! Access denied."
    fi
done

echo "[+] Access Granted! Welcome Master."

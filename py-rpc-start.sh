#!/bin/bash

cd
if [ -d DIT-RPC ]; then
    while true; do
    read -p "Found another folder (DIT-RPC) Do you want to delete it? (y/n) " yn
    case $yn in
        [Yy]* ) echo "Deleting DIT-RPC folder..."; 
        rm -rf DIT-RPC
        git clone https://github.com/Xytrux/DIT-RPC.git
        cd DIT-RPC/Python
        python3 main.py
        break;;
        [Nn]* ) echo "Using current folder..."; 
        cd DIT-RPC/Python
        python3 main.py
        exit;;
        * ) echo "Please answer yes or no.";;
        esac
    done
fi
git clone https://github.com/Xytrux/DIT-RPC.git
cd DIT-RPC/Python
python3 main.py
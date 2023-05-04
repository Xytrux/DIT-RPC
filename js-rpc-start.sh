#!/bin/bash

cd
if [ -d DIT-RPC ]; then
    while true; do
    read -p "DIT-RPC folder detected. Do you want to delete it? (y/n) " yn
    case $yn in
        [Yy]* ) echo "Deleting DIT-RPC folder..."; 
        rm -rf DIT-RPC
        git clone https://github.com/Xytrux/DIT-RPC.git
        cd DIT-RPC/JavaScript
        npm i discord-rpc
        node .
        break;;
        [Nn]* ) echo "Using current folder..."; 
        cd DIT-RPC/JavaScript
        npm i discord-rpc
        node .
        exit;;
        * ) echo "Please answer yes or no.";;
        esac
    done
fi
git clone https://github.com/Xytrux/DIT-RPC.git
cd DIT-RPC/JavaScript
npm i discord-rpc
node .
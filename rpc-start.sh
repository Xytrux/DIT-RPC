#!/bin/bash

cd
if [ -d DIT-RPC ]; then
    echo "Deleting DIT-RPC folder..."
    rm -rf DIT-RPC
    git clone https://github.com/Xytrux/DIT-RPC.git
    cd DIT-RPC
    python3 main.py
fi
git clone https://github.com/Xytrux/DIT-RPC.git
cd DIT-RPC
python3 main.py
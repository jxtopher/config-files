#!/bin/bash 

sudo apt-get update
sudo apt-get install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev

cd /tmp
wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
tar xzf Python-3.9.0.tgz
./configure --enable-optimizations
make -j 4
sudo make altinstall

python3.9 --version
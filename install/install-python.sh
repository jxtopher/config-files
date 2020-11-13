#!/bin/bash 

## Installing the packages
sudo apt-get update
sudo apt-get install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev

## Download, complie, install
cd /tmp
wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
tar xzf Python-3.9.0.tgz
cd Python-3.9.0
./configure --enable-optimizations
make -j 4
sudo make altinstall

exit

## Check installation
python3.9 --version

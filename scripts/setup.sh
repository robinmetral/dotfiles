#!/bin/bash

# update
sudo apt update && sudo apt full-upgrade -y

# install programs
./aptinstall.sh
./snapinstall.sh

# other programs
for f in programs/*.sh; do bash "$f" -H; done

# get all upgrades
sudo apt upgrade -y

# source bashrc
source ~/.bashrc

echo "done!"

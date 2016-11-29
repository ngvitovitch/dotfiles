#!/bin/bash

# Runs apt-get {update,upgrade} if more than a week has passed
# since last time.  There's probably a prettier way of doing this
# automatically ...
# Note: check out 'unattended-upgrades' package
let TS_APT_LAST=$(stat -c%Y /var/cache/apt/pkgcache.bin)
let TS_NOW=$(date +%s)
if (( TS_NOW - TS_APT_LAST > 60 * 60 * 24 * 7 )); then
  sudo apt-get update
  sudo apt-get upgrade -y
fi

# Bunch of packages

# Absolutely necessary packages for terminal users
sudo apt-get install -qq tmux tree

# C/C++ development essentials
sudo apt-get install -qq build-essential g++

# Common utilities
sudo apt-get install -qq p7zip-full curl

# Miscellany
sudo apt-get install -qq cowsay fortune-mod lolcat sl bash-completion

#!/bin/bash

# Update and upgrade all software
sudo apt-get update
sudo apt-get upgrade -y

# Absolutely necessary packages for terminal users
sudo apt-get install -y tmux tree

# C/C++ development essentials
sudo apt-get install -y build-essential g++

# Common utilities
sudo apt-get install -y p7zip-full

# Miscellany
sudo apt-get install -y cowsay fortune-mod lolcat sl bash-completion

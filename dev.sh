#!/bin/sh

#Dev structure
mkdir "~/Documents/Development"
mkdir "~/Documents/Development/hio"
mkdir "~/Documents/Development/uni"
mkdir "~/Documents/Development/personal"

#Dev commands
echo "alias develop='cd ~/Documents/Development'" >> ~/.bash_profile
echo "hiodev() {
    cd ~/Documents/Development/hio
    vagrant up
}" >> ~/.bash_profile
echo "hiodone() {
    cd ~/Documents/Development/hio
    vagrant halt
}" >> ~/.bash_profile
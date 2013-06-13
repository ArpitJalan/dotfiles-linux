#!/bin/bash
#
# Ubuntu config optimizations
#

# optimize swap (I want to almost never use this crap)
echo "vm.swappiness = 1" | sudo tee -a /etc/sysctl.conf
sudo sysctl vm.swappiness=10
sudo swapoff -a
sudo swapon -a

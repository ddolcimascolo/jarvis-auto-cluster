#!/bin/bash

INFO=($(cat -)) # INFO is "<ipv4> <trigger>"

# Remove existing info for that Jarvis
sudo sed -i "/${INFO[1]}/ d" /etc/hosts

# Add info to the hosts file
echo "${INFO[0]} ${INFO[1]}" | sudo tee -a /etc/hosts

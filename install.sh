#!/bin/bash

sudo apt-get install --yes --force-yes socat

sudo systemctl enable /home/pi/jarvis/plugins_installed/jarvis-auto-cluster/systemd/jarvis-auto-cluster-listen.service
sudo systemctl enable /home/pi/jarvis/plugins_installed/jarvis-auto-cluster/systemd/jarvis-auto-cluster-broadcast.service
sudo systemctl enable /home/pi/jarvis/plugins_installed/jarvis-auto-cluster/systemd/jarvis-auto-cluster-broadcast.timer

sudo systemctl start jarvis-auto-cluster-listen.service
sudo systemctl start jarvis-auto-cluster-broadcast.timer

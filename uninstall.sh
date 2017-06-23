#!/bin/bash

sudo systemctl stop jarvis-auto-cluster-listen.service
sudo systemctl stop jarvis-auto-cluster-broadcast.timer

sudo systemctl disable /home/pi/jarvis/plugins_installed/jarvis-auto-cluster/systemd/jarvis-auto-cluster-listen.service
sudo systemctl disable /home/pi/jarvis/plugins_installed/jarvis-auto-cluster/systemd/jarvis-auto-cluster-broadcast.service
sudo systemctl disable /home/pi/jarvis/plugins_installed/jarvis-auto-cluster/systemd/jarvis-auto-cluster-broadcast.timer

sudo apt-get remove --yes --force-yes socat

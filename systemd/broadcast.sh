#!/bin/bash

echo "$(hostname -I) $(cat /home/pi/jarvis/config/trigger)" | socat - UDP4-DATAGRAM:255.255.255.255:65432,broadcast

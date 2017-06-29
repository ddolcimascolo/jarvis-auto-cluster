#!/bin/bash

IPS=$(hostname -I)

for ip in ${IPS}
do
    echo "${ip} $(cat /home/pi/jarvis/config/trigger)" | socat - UDP4-DATAGRAM:255.255.255.255:65432,broadcast
done

#!/bin/bash 
sudo modprobe can
sudo modprobe vcan
sudo modprobe slcan
sudo ip link add name vcan0 type vcan
sudo /sbin/ifconfig vcan0 up
nohup candump -L vcan0 > ./public/output.log &
padrino start -p 3000 -h 0.0.0.0 

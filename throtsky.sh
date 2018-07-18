#!/bin/sh
#This is an attempt to control the downlink datarate in real time using pfctl

BANDWIDTH_1="1Mbit/s"
BANDWIDTH_2="1Mbit/s"

# Starting BW
sudo dnctl pipe 1 config bw $BANDWIDTH_1
echo "dummynet in from any to any pipe 1"|sudo pfctl -f -
sudo pfctl -e


# Constricted BW
##(sleep 60; sudo dnctl pipe 1 config bw $BANDWIDTH_2)&
# echo "dummynet in from any to any pipe 1"|sudo pfctl -f -

# Clean up
##(sleep 300; sudo pfctl -F all -d; sudo dnctl -q flush)&
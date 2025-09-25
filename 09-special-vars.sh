#!/bin/bash


echo "All variables passed to the script: $@"
echo "Number of variables paassed: $#"
echo "Script Name: $0"
echo "Current working directory is: $PWD"
echo "Home directory of current user is: $HOME"
echo "PID of the script executing now: $$"
sleep 100 &
echo "PID of last background command: $!"

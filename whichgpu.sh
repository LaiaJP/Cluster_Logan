#!/bin/bash
gpua=$(nvidia-smi | awk '$5=="1080"{print $5}' | wc -l)
gpub=$(nvidia-smi | awk '$5=="980"{print $5}' | wc -l)
gpuc=$(nvidia-smi | awk '$6=="Ti"{print $6}' | wc -l)

if [ "$gpua" -ne "0" ]; then
    source /home/laia/amber16.sh
elif [ "$gpua" = "0" ]; then
    if [ "$gpub" -ne "0" ] && [ "$gpuc" = "0" ]; then
        source /home/laia/amber16.sh
      
    elif [ "$gpub" -ne "0" ] && [ "$gpuc" = "1" ]; then
	source /home/laia/amber16.sh
    fi 
    if [ "$gpub" =  "0" ]; then
        source /home/laia/amber14.sh
    fi
fi


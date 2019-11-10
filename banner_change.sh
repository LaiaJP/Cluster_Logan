#!/bin/bash

while true
  do
    ple=$(df -h | grep 'partition1' | awk '{print $5}' | cut -c 1-2 )
    if [ "$ple" -ge "75" ]
      then
        cp banner_Vaciar /etc/banner
    elif [ "$ple" -lt "75" ]
      then
        cp banner_Logan /etc/banner
    fi
    sleep 1d
done


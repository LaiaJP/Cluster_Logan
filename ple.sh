#!/bin/bash

while true
  do
    ple=$(df -h | grep 'partition1' | awk '{print $5}')
    if [ "$ple" == "65%" ]
      then
        echo "Logan al 80%" | mail -s "Logan 80%" laiing.91@gmail.com
        break
    fi
    sleep 1d
done


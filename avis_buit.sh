#!/bin/bash

while true
  do
    buit=$(qstat -F gpu -u "*" | grep '1080.q@compute-0-0' |  awk '$4=="1.00"{print $4}' | wc -l)
    if [ "$buit" = "1" ]
      then
        echo "La 1080 esta plena" | mail -s "1080 plena" laiing.91@gmail.com
        break
    fi
    sleep 10m
done


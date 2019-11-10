#!/bin/bash

while true
  do
    ple=$(df -h | grep 'partition1' | awk '{print $5}')
    if [ "$ple" == "80%" ]
      then
        echo | bash tamano_del_home.sh > tempi
        tac tempi > tempo
        sed -i '1d' tempo
        i=0
        while read line
          do
            lista[ $i ]="$line"
            (( i++ ))
        done < <(cat tempo)

        printf '%s\n' "Hola a todos!
Logan esta a punto de llenarse, asi que si no lo vacian los calculos no van a correr.
Paso lista ocupacion:
${lista[@]}
Saludos" | mail -s "Logan lleno" clusterlogan@googlegroups.com
        rm tempi tempo
        break
    fi
    sleep 1d
done


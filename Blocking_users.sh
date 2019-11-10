#!/bin/bash

while true; do

users=(`ls /state/partition1/home/`)
len=${#users[*]}

i=0
while [ $i -lt $len ]; do

occupancy=(`du -s /state/partition1/home/${users[$i]} | awk '{print $1}' `)

user=${users[$i]}

if [ "$occupancy" -ge "78643200" ]
then
cat << eof > block_${user}
{
   name         block_${user}
   description  NONE
   enabled      TRUE
   limit        users {${user}} queues {cpu.q} to slots=0
   limit        users {${user}} queues all.q,otras.q,1080.q to gpu=0
}

eof

qconf -Arqs block_${user}
echo "Has superado la cuota de almacenamiento.
Por lo tanto tu usuario ha quedado bloqueado." >> /state/partition1/home/${user}/USUARIO_BLOQUEADO

else
qconf -drqs block_${user}
rm -f block_${user}
rm /state/partition1/home/${user}/USUARIO_BLOQUEADO
fi

let i++
done

sleep 4h
done


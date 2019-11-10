#!/bin/bash

export LANG=en_US.UTF-8
name=$1
pass="${name}1234"

#useradd $name
#expect << EOF
#  spawn passwd ${name}
#  expect "New password:"
#  send "${pass}\r"
#  expect "Retype new password:"
#  send "${pass}\r"
#  expect eof
#EOF

#rocks sync users

uid="$(grep "^${name}:x" /etc/group | sed 's/[A-Za-z]*://g')"
echo "My uid is ${uid}"

#echo "
#
#Entrar en pluton como admin: ssh admin@pluton.
#Ejecutar el script 'new_user.sh' con el nombre de ususario y el uid"

expect << EOF
  spawn ssh admin@192.168.1.167
  expect "admin@192.168.1.167's password:"
  send "bsas1234"
  spawn sudo adduser $name -uid $uid
  expect "password for admin:"
  send "bsas1234\r"
  expect "Enter new UNIX password:"
  send "${pass}\r"
  expect "Retype new UNIX password:"
  send "${pass}\r"
  expect "Full Name []:"
  send "\r"
  expect "Room Number []:"
  send "\r"
  expect "Work Phone []:"
  send "\r"
  expect "Home Phone []:"
  send "\r"
  expect "Other []:"
  send "\r"
  expect "Is the information correct? [Y/n]"
  send "Y\r"
  expect eof
EOF

echo '

Añadir usuario al grupo de mail (clusterlogan@googlegroups.com). En el mail de bienvenida mostrar el link del tutorial (https://docs.google.com/document/d/1u1buh8HSMk0kzYECdi_eiEQA2Jfz_g_Ysq9dPjpPEwA/edit#heading=h.1lw05eauk72x) y copiar el script de ejemplo (ejemplo_corrida.sh) en el home del nuevo usuario.
Besitos!'




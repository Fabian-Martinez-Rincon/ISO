#!/bin/bash

if [ $# -ne 1 ]; then 
  echo "Parametros incorrectos"; exit 1; 
fi

usuarios=$(cat /etc/passwd | cut -d: -f1 | grep -w $1 | wc -l)

if [ $usuarios -eq 0 ]; then
  echo "El usuario pasado no existe"; exit 2;
fi

while true
do
  sleep 10
  if [ $(users | grep -w $1 | wc -l) -eq 1 ]; then
    echo "usuario $1 logueado en el sistema"
    exit
  fi
done

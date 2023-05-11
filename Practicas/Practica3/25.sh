#!/bin/bash


# En grupo, me quedo con la columna 4 que tiene
# Los usuarios del grupo
# Uso el grep para filtrar por grupo aunque puede haber un usuario con nombre
# users pero bueno
# Cambiamos el separador de , por un espacio para agregarlo al array

if [ $# -ne 1 ] && [ $# -ne 2 ]; then echo "Parametros Invalidos"; exit 1; fi 

grupo=$(cat /etc/group | grep -w "users" |cut -d: -f4 | tr "," " ")

usuarios=($grupo)

case $1 in
  -b)
    if [ $2 -lt ${#usuarios[*]} ]; then
      echo ${usuarios[$2]}
    else
      echo "Parametro fuera de rango"
      exit 1
    fi;;
  -l) echo "Longitud: ${#usuarios}";;
  -i) echo "Todos: ${usuarios[*]}";;
esac

#usuarios
#echo $grupos

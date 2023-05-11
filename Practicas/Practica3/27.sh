#!/bin/bash

inicializar(){
  array=()
  echo "vecto pa"
}
agregar_elem(){
  array+=($1)
}
eliminar_elem(){
  unset array[$1]
}
imprimir(){
  echo ${array[*]}
}
longitud(){
  echo ${#array[*]}
}
inicializar_Con_Valores(){
  for ((i=0; i<$1; i++));
  do
    array+=($2)
  done
}

select opcion in  inicializar agregar_elem eliminar_elem longitud imprimir inicializar_Con_Valores
do  
  case $opcion in
    inicializar) inicializar;;
    agregar_elem) agregar_elem 9;;
    eliminar_elem) eliminar_elem 0;;
    longitud) longitud ;;
    inicializar_Con_Valores) inicializar_Con_Valores 10 4 ;;
    imprimir) imprimir;;
  esac
done

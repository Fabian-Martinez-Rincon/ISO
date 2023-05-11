#!/bin/bash

archivos_doc=$( ls $HOME | grep '\.doc$' )

verArchivo(){
  encontro=false
  for i in ${archivos_doc[*]}
  do
    if [ $1 = $i ]; then 
      echo $(cat "$HOME/$1")
      encontro=true
    fi
  done
  if [ $encontro = false ]; then echo "No se encontro" ;return 5; fi
}

cantidadArchivos(){
  echo ${#archivos_doc[*]}
}
borrarArchivo(){
  echo "Ingrese un archivo"
  if ! [ -e "$HOME/$1" ]; then echo "Archivo no encontrado"; return 10; fi
  echo "Quiere eliminar el archivo logicamente? SI O NO"
  select desicion in SI NO SALIR  
  do
    case $desicion in
      SI) unset "$archivos_doc[$1]"; echo "Elementos ${archivos_doc[*]}" ;;
      NO) rm "$HOME/$1" ;;
      SALIR) break;;
    esac
  done
}

verArchivo "ejercio292.doc"
cantidadArchivos
borrarArchivo "ejercio9.doc"
echo $?


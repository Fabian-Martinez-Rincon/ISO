#!/bin/bash
# El -F agrega un indicador al final para saber que permisos tiene
# / para directorios
# * para archivos ejecutables
archivos=$(ls -F | grep "*$")
#echo ${archivos[*]}
if [ -n ${archivos[*]} ];then exit 1; fi

echo ${archivos[*]}
bin="$HOME/bin"
if ! [ -e $bin ]; then mkdir $bin; fi

mv ${archivos[*]} $bin

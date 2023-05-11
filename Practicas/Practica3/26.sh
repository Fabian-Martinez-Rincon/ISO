#!/bin/bash

if [ $# -le  0 ]; then exit 1;fi

echo "Entro al programa $#"
cantidad=$(($#-1))
echo $cantidad
elementos=($*)
let existen
for ((i=0 ; i<=$cantidad ; i+=2));
do
  actual=${elementos[$i]}
  if [ -d $actual ]; then echo "es un directorio";
  elif [ -f $actual ]; then echo "es un archivo";
  else let existen++;fi

done
echo "La cantidad de archivos que no existen es" $existen

#!/bin/bash

if [ $# -ne 1 ]; then echo "Ingrese un parametro"; exit 1; fi
if ! [ -e $1 ] && ! [ -d $1 ] ; then exit 4; fi

archivos=($(ls))
let contador
for i in ${archivos[*]} 
do
  if [ -f $i ] && [ -w $i ] && [ -r $i ]; then let contador++;fi
done

echo $contador

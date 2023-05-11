#!/bin/bash

if [ $# -ne 1 ]; then echo "error"; exit 1; fi

cadena=""
for i in $(cat /etc/passwd) 
do
  usuario=$(echo $i | cut -d: -f1)
  path=$(echo $i | cut -d: -f6)
  cadena
  cadena+="$usuario $(find $path -name "*$1" | wc -l) \n"
done

echo -e "$cadena" > reporte.txt

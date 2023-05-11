#!/bin/bash
var1=10
var2=5

if [ -e 7.sh ]; then echo "existe"; else echo "no existe"; fi

if (( $var1 % $var2 == 0 )); then echo "Es Par"; else echo "Es Impar"; fi

if (( $var1 > $var2 )); then echo "Es Mayor"; else echo "Es Menor"; fi

if [ -r 7.sh -a -w 7.sh -a -x 7.sh ]; then echo "Todos los permisos"
else echo "no tiene todos los permisos"; fi

if [ -r 7.sh -o -w 7.sh -o -x 7.sh ]; then echo "algun permiso"
else echo "no tiene todos los permisos"; fi



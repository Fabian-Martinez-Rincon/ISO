#!/bin/bash

select operacion in Multiplicacion Suma Resta CualEsMayor Cerrar
do
  case $operacion in
    Multiplicacion) echo "MULTIPLICACION: $(( $1 * $2 ))" ;;
    Suma) echo "SUMA: $(( $1 + $2 ))" ;;
    Resta) echo "RESTA: $(( $1 - $2 ))" ;;
    CualEsMayor) if [ $1 -gt $2 ]; then echo "es mayor el $1";
      else echo "es mayor el $2" ;fi;;
    Cerrar|*) exit ;;
  esac  
done






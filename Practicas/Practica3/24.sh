#!/bin/bash

vector1=(1 80 65 35 2 )
vector2=(5 98 3 41 8 )

long=`expr ${#vector1[*]} - 1`

for i in $(seq 0 $long)
do
  resultado=`expr ${vector1[$i]} + ${vector2[$i]}`
  echo "La suma de los elementos de la posicion $i de los vectores es $resultado"
done

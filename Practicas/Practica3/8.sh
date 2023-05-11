#!/bin/bash

echo "Ingrese un caracter"
read letra

case $letra in
  [a-z]) echo "Es una minuscula";;
  [A-Z]) echo "Es una mayuscula";;
  [0-9]) echo "Es un nro";;
  *) echo "Ingreso un caracter invalida";;
esac

var1=0
while [ $var1 -le 5 ]
do
  echo "Hola mundo"
  var1=$((var1+1))
done

if [ 3 -eq 3 ]; then
  echo "Son iguales"
else
  echo "Son distintos"
fi

for var in 1 2 3 4 5
do
  echo $var
done

echo "--------"

for var2 in {1..5}
do
  echo $var2
done

echo "--------"

for ((i=1; i<=5; i++))
do
  echo $i
done

select opcion in opcion1 opcion2
do
  
  case $opcion in
    opcion1) echo "Opcion1" ;;
    opcion2) echo "Opcion2";;
    *) exit;;
  esac
done


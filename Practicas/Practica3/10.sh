#!/bin/bash

array=()
read -a array
echo "Array pelado" $array
echo "index 3" ${array[3]}
echo "Todos los elementos" ${array[*]}
echo "Cantidad de elementos" ${#array[*]}

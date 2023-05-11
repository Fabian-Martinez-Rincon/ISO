#!/bin/bash
archivos=$(ls)
for i in $archivos
do
  nuevo=${i^^}
  nuevo=${i,,}
  echo $nuevo
done

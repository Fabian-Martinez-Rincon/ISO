#!/bin/bash
num=(10 3 5 7 9 3 5 4)

productora(){
  let resultado=1
  for i in ${num[*]}
  do
    resultado=$(($i * $resultado))
  done
  echo $resultado
}

productora


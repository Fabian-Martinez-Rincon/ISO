#!/bin/bash
nros=(10 3 5 7 9 3 5 4)

imprimir(){
  let nro
  for i in ${nros[*]}
  do
    echo $i
    if (( $i % 2 == 0 )); then
      echo "Par: "$i
    else
      let impares++
    fi
  done

  echo "Nros Impares: "$impares
}

imprimir

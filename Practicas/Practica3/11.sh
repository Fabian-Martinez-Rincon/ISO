#!/bin/bash

sumar(){
  return $(( $1 + $2 ))
  
}
cadena(){
  echo "Hola $1, como estas"
}

sumar 2 3
echo $?

mensaje=$(cadena "Juan")
echo $mensaje

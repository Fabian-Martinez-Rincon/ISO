#!/bin/bash

scripts=$(ls | grep "\.sh")
#echo $scripts

select opcion in Salir $scripts
do
  case $opcion in
    Salir) exit;;
    *) source $opcion;;
  esac
done

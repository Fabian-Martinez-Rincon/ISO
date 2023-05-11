#!/bin/bash

pila=()

push (){ pila+=($1); }
pop (){ unset pila[${#pila[@]}-1]; }
lenght (){ echo ${#pila[*]}; }
print(){ echo ${pila[*]}; }

push 2
push 4

echo "$(lenght)"
print

pop

print

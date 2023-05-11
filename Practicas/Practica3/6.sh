#!/bin/bash/

SUMA=`expr 10 + 5`
RESTA=$(expr 10 - 5)
MULTIPLICACION=$(expr 10 \* 5)
DIVISION=$(expr 10 / 5)
MODULO=$(expr 10 % 5)
LONGITUD="Fabian "$(expr length "Fabian")
SUBSTR="Fabian 1 6: "$(expr substr "Fabian" 1 6)
INDICE="Fabian b: "$(expr index "Fabian" b)


echo "var1 = 10, var2 = 5"
echo "SUMA $SUMA"
echo "RESTA $RESTA"
echo "MULTIPLICACION $MULTIPLICACION"
echo "DIVISION $DIVISION"
echo "MODULO $MODULO"
echo "LONGITUD $LONGITUD"
echo "SUBSTR $SUBSTR"
echo "INDICE $INDICE"


#!/bin/bash

if [[ $# -ne 1 ]]
then
    echo "Error: se requiere un único parámetri"
    exit 1
fi

#comprovar que realmente tenemos un número
if [["$1" =~ ^[0-9]+$ ]]; 
then
    echo "error requiere número"
    exit 1
fi

echo "Vamos a calcular el sumatorio de $1"

#recoger el valor de n
n=$1
suma=0

#bucle for
for (( i=2;i<=n;i+=2 ))
do
    echo "i:$i valor de n $n"
    suma=$((suma+i))
done

echo "la suma de los números pares entre 1 y $n vale $suma"
#calcular sumatorio de un numero
exit 0
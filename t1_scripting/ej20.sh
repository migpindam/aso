#!/bin/bash

#Crea un script primo.sh que verifique si el número pasado por parámetro es primo o no.

modulo=$(( $1 % 2 ))
contador=3

if [[ $modulo -ne 0 && $1 -ne 1 ]]; then
  while [[ $modulo -ne 0 ]]; do
    modulo=$(($1%contador))
    ((contador++))
  done
fi
  
if [[ $contador -ge $1 ]]; then
  echo "El número $1 es primo"
else
  echo "El número $1 no es primo"
fi

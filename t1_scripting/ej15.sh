#!/bin/bash

#Realiza un script que, dado un número n pasado por parámetro, muestre su tabla de multiplicar con el formato de salida siguiente: i x n = resultado.

if [[ $# -ne 1 ]]; then
  echo "Necesito que me pases un único parámetro"
  exit 1
elif ! [[ $1 =~ ^-?[0-9]+$ ]]; then
  echo "Necesito que me pases un número"
  exit
fi


contador=1

while [[ $contador -le 10 ]]; do
  resultado=$((contador*$1))
  echo "$1 x $contador = $resultado"
  ((contador++))
done

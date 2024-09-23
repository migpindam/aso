#!/bin/bash

#Realiza un script que, dado un número n pasado por parámetro, muestre su tabla de multiplicar con el formato de salida siguiente: i x n = resultado.

contador=1

while [[ $contador -le 10 ]]; do
  resultado=$((contador*$1))
  echo "$1 x $contador = $resultado"
  ((contador++))
done

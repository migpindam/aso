#!/bin/bash

random=$((1+$RANDOM%100))
num=101

while [[ $random -ne $num && $num -ne 0 ]]; do
  read -p "Adivina el nñumero: " num
  if [[ $num -eq 0 ]]; then
    echo "No pasa nada, todos tenemos un mal día"
  elif [[ $num -lt $random ]]; then
    echo "El número es mayor"
  elif [[ $num -gt $random ]]; then
    echo "El número es menor"
  else
    echo "Enhorabuena, el número era el $random!!!"
  fi
done

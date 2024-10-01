#!/bin/bash

#Crea un script juego.sh que consista en un juego de adivinar un número del 1 al 100. El número a adivinar se pondrá fijo al principio del script. Se le irán preguntando números al usuario y se dirá si el número es mayor o menor que el que hay que adivinar. El juego termina si el usuario averigua el número (Mensaje de Enhorabuena) o introduce un 0 (Se rinde)

random=$((1+$RANDOM%100))
num=101

while [[ $random -ne $num && $num -ne 0 ]]; do
  read -p "Adivina el número: " num
  if [[ $num -lt $random ]]; then
    echo "El número es mayor"
  else [[ $num -gt $random ]]
    echo "El número es menor"
  fi
done

if [[ $num -eq 0 ]]; then
  echo "No pasa nada, todos tenemos un mal día"
else
  echo "Enhorabuena, el número era el $random!!!"
fi

#!/bin/bash

#Haz un script que vaya dando la suma de todos los números que se introduzca por teclado hasta que se introduzca un 0, en cuyo caso se mostrará el último resultado y terminará el script.

num=1
resultado=0

while [[ $num -ne 0 ]]; do
  read -p "" num
  resultado=$((resultado+num))
  echo "El resultado es: $resultado"
done

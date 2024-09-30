#!/bin/bash

echo "Para sumar: 1"
echo "Para restar: 2"
echo "Para multiplicar: 3"
echo "Para dividir: 4"

read -p "Dame opción: " opcion

read -p "Dame el primer número: " num1
read -p "Dame el segundo número: " num2

case $opcion in
   1)
      resultado=$((num1+num2))
      ;;
   2)
      resultado=$((num1-num2))
      ;;
   3)
      resultado=$((num1*num2))
      ;;
   4)
      resultado=$(echo "scale=1;  ($num1/$num2)" | bc)
      ;;
   *)
      echo "Opción incorrecta"
esac

echo "El resultado es $resultado"

#!/bin/bash

read -p "Primer número: " num1
read -p "Segundo número: " num2

if [[ $num1 -eq $num2 ]]; then
   echo "Son iguales"
elif [[ $num1 -gt $num2 ]]; then
   echo "$num1 es el mayor"
else
   echo "$num2 es el mayor"
fi

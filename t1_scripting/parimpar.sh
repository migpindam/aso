#!/bin/bash

read -p "Introduce número: " num

resto=$(( num % 2 ))

if [[ $resto -eq 0 ]]; then
   echo "El número es par"
else
   echo "El número es impar"
fi

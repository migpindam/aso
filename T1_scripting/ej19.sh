#!/bin/bash

#Realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón:

for (( i=1; i<5; i++ )); do
  for (( j=1; j<=i; j++)); do
    echo -n "$i"
  done
  echo ""
done

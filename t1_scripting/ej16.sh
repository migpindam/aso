#!/bin/bash

#Crea un shell script que sume los números del 1 al 1000 mediante una estructura for, while y until.


#for

resultado=0

for (( i=1; i<=1000; i++ )); do
  resultado=$((resultado+$i))
done

echo "$resultado"



#while

resultado=0

contador=1

while [[ $contador -le 1000 ]]; do
  resultado=$((resultado+contador))
  ((contador++))
done

echo "$resultado"



#until

resultado=0

contador=1

until [[ $contador -gt 1000 ]]; do
  resultado=$((resultado+contador))
  ((contador++))
done

echo "$resultado"

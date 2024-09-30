#!/bin/bash

red=$(ip addr | grep 'enp' | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/' | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -Eo '^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.')
host=1

#while [[ $host -lt 5 ]]; do
  ping -c 4 $red$host > /dev/null 2>&1
  if [[ $? -eq 1 ]]; then
    echo "$red$host: libre"
  fi
  if [[ $? -eq 0 ]]; then
    echo "$red$host: ocupada"
  fi
  ((host++))
#done

echo "$?"

#averiguar la direccion de red
#averiguar la mascara de subred
#hacer ping a cada direccion de la red
#si está disponible, poner disponible
#si no lo está, poner no disponible
#enviar resultado a informe

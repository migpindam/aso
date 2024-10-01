#!/bin/bash

#red=$(ip addr | grep 'enp' | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/' | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -Eo '^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.')
red=$(hostname -I | grep -Eo '^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.')
host=1

function CDIR(){

  echo "" >> informe.txt
  echo "Dirección de red: ${red}0" >> informe.txt
  echo "Máscara de subred: /24" >> informe.txt
  echo "Dirección broadcast: ${red}255" >> informe.txt
}

while [[ $host -lt 255 ]]; do
  ping -c 4 $red$host > /dev/null 2>&1
  if [[ $? -eq 0 ]]; then
    echo "$red$host: ocupada" >> informe.txt
  else
    echo "$red$host: libre" >> informe.txt
  fi
  ((host++))
done

CDIR

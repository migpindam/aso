#!/bin/bash

#Realizar un script que reciba como único parámetro el nombre de un directorio, especificado mediante su nombre de ruta completo. El programa debe mostrar un listado no recursivo de todas las entradas contenidas en ese directorio, indicando para cada una de ellas si se trata de un fichero o de un directorio. Al final, debe mostrarse un mensaje indicando el número total de entradas procesadas.

if [[ $# -ne 1 ]]; then
  echo "Necesito que me pases un único parámetro"
  exit
elif [[ ! -d $1 ]]; then
  echo "Necesito que me pases un directorio"
  exit
fi

contador=0

for i in $(ls -a "$1"); do
  ((contador++))
  if [[ -d $1$i ]]; then
    echo "$i - directorio"
  elif [[ -f $1$i ]]; then
    echo "$i - archivo"
  else
    echo "$i -"
  fi
done

echo "Total: $contador"

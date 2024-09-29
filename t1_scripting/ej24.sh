#!/bin/bash

#Escribir un script que, dado el nombre de un directorio como parámetro, muestre las estadísticas de cuantos ficheros y cuantos subdirectorios contiene. Debes comprobar que existe el directorio que se pasa como parámetro y que efectivamente es un directorio.

if [[ $# -ne 1 ]]; then
  echo "Necesito que me pases un único parámetro"
  exit
elif [[ ! -d $1 ]]; then
  echo "Necesito que me pases un directorio"
  exit
elif ! [[ $1 =~ /$ ]]; then
  dir="$1/"
else
  dir=$1
fi

archivos=0
subdirectorio=0

for i in $(ls -a "$1"); do
  if [[ -d $dir$i ]]; then
    ((subdirectorio++))
  elif [[ -f $dir$i ]]; then
    ((archivo++))
  fi
done

echo "Total archivos: $archivo"
echo "Total subdirectorios: $subdirectorio"

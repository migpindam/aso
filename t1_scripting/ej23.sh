#!/bin/bash

#Modifica el script anterior para que indique si se trata de un fichero, de un directorio, de un enlace simbólico, un archivo especial de bloque, archivo especial de caracter. Debes pasarle el directorio /dev y verificar que funciona bien.

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

contador=0

for i in $(ls -a "$1"); do
  ((contador++))
  if [[ -d $dir$i ]]; then
    echo "$i - directorio"
  elif [[ -f $dir$i ]]; then
    echo "$i - archivo"
  elif [[ -L $dir$i ]]; then
    echo "$i - enlace"
  elif [[ -b $dir$i ]]; then
    echo "$i - especial bloque"
  elif [[ -c $dir$i ]]; then
    echo "$i - especial caracter"
  else
    echo "$i -"
  fi
done

echo "Total=$contador"

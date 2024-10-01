#!/bin/bash

if [[ $# -ne 2 ]]; then
   echo "Error de parámetros"
   exit
elif [[ ! -f $1 ]]; then
   echo "El archivo no existe o no es un fichero ordinario"
   exit
elif [[ -e $2 ]]; then
   echo "El archivo ya existe"
   exit
fi

cp $1 $2

echo "Se ha copiado el archivo $1 en $2"

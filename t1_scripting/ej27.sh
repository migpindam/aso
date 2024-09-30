#!/bin/bash

#Crea un script que contenga una función que se le pase por parámetro el nombre de un fichero recibido como parámetro del script. Dicha función deberá verificar su existe el fichero o no. El nombre de la función es “existe”. Si el resultado es positivo, el script debe cambiar sus permisos a ejecutable para el propietario, pero no para el resto.

function existe() {
  [ -e "$1" ]
}

if [[ $? -eq 0 ]]; then
  chmod u+x $1
  #Permisos de ejecución del resto entiendo que se dejan como están, no se quitan.
fi



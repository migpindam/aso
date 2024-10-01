#!/bin/bash

#Crea un script que contenga una función que se le pase por parámetro el nombre de un fichero recibido como parámetro del script. Dicha función deberá verificar su existe el fichero o no. El nombre de la función es “existe”. Si el resultado es positivo, el script debe cambiar sus permisos a ejecutable para el propietario, pero no para el resto.

function existe() {
  [ -f "$1" ]
}

existe

if [[ $? -ne 0 ]]; then
  sudo chmod u+x $1
  sudo chmod go-x $1
fi



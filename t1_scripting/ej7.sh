#!/bin/bash

#Defino la variable de la fecha.

fecha=$(date +%Y-%m-%d)

#Defino la variable nombre del archivo final... Ejemplo:

nombre="$fecha$1.tar.gz"

#Comprimo el directorio $1  en el archivo con nombre $nombre.

touch "$nombre"

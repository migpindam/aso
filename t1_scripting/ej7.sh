#!/bin/bash

#Defino la variable de la fecha.

fecha=$(date +%Y-%m-%d)
ruta="$1"
directorio=$(basename "$ruta")

tar -czvf $fecha$directorio.tar.gz $1

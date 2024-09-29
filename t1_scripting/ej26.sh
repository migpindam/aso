#!/bin/bash

#Realiza un script que busque cualquier fichero que pueda ser modificado por cualquier usuario (— — rwx) y guarde la lista de ficheros con la ruta exacta en el archivo archivos_peligrosos.txt

sudo ls -l -R / | grep -E '^.{7}rwx' >> archivos_peligrosos.txt

#!/bin/bash

#Realiza un script que busque cualquier fichero que pueda ser modificado por cualquier usuario (— — rwx) y guarde la lista de ficheros con la ruta exacta en el archivo archivos_peligrosos

ls -l -R . | grep -E "^-.{6,6}rwx" >> archivos_peligrosos.txt

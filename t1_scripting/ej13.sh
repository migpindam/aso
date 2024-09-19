#!/bin/bash

echo "a) Añadir"
echo "b) Buscar"
echo "c) Listar"
echo "d) Ordenar"
echo "e) Borrar"
echo ""
read -p "Opción: " opcion

case $opcion in
   a)
      read -p "Introducir línea: " insert
      echo "$insert" >> lista.txt
      echo "$insert se ha añadido a lista.txt"
      ;;
   b)
      read -p "Patrón a buscar: " dato
      echo "Resultado:"
      grep $dato lista.txt
      ;;
   c)
      cat lista.txt
      ;;
   d)
      orden=$(sort lista.txt)
      echo "$orden" > lista.txt
      echo "Se han reordenado los registros de lista.txt"
      ;;
   e)
      rm lista.txt
      echo "Borrado"
      ;;
   *)
      echo "Opción incorrecta"
      ;;
esac

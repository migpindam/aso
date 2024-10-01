#!/bin/bash

XX=$(echo "$3" | cut -c 1,2)
YY=$(echo "$4" | cut -c 1,2)
Z=$(echo "$2" | cut -c 1)
id="alu$XX$YY$Z"

case $1 in

   alta)
      if [[ -z $5 ]]; then
         sudo groupadd "$id"
         sudo useradd -g "$id" "$id"
      else
##       sudo groupadd "$5"
         sudo useradd -g "$5" "$id"
      fi
   ;;

   baja)
      sudo userdel -f "$id"
   ;;

   *)
      echo "Error. La sintaxis correcta es ./ej14.sh alta/baja nombre apellido1 apellido2 [grupo]"
   ;;

esac

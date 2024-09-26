#!/bin/bash

for i in $(ls -a "$1"); do
  if [[ -d $1$i ]]; then
    echo "$i - directorio"
  elif [[ -f $1$i ]]; then
    echo "$i - archivo"
  else
    echo "$i -"
  fi
done

#!/bin/bash

read -p "Dame un número: " num1
read -p "Dame otro número: " num2

media=$(echo "scale=1;  ($num1+$num2)/2" | bc)

echo "Su media es $media"

#!/bin/bash

read -p "Dame dos números: " num1 num2

media=$(echo "scale=1;  ($num1+$num2)/2" | bc)

echo "Su media es $media"

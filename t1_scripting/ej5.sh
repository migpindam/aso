#!/bin/bash

read -p "Dame dos números: " num1 num2

media=$(((num1+num2)/2)) | bc

echo "$media"

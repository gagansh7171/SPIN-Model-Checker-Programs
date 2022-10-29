#!/bin/bash
# Usage : ./script file.pml ltl_name
mkdir tmp
cp $1 tmp/$1
cd tmp/
spin -a $1
gcc -o pan pan.c
./pan -a  $2
spin -p -t $1
cd ..
rm -r tmp/
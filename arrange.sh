#!/bin/bash

alphabet=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")

shopt -s nullglob

for letter in ${alphabet[@]}
do 
files=(./files/${letter}* ./files/${letter^^}*)
for file in "${files[@]}"
do
mv ${file} ${letter}
done
done
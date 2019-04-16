#!/bin/sh

cat Lab5_partII_Q3_input.txt | awk '/[0-9][0-9][.][A-Z][a-z][a-z][.][0-9][0-9][0-9][0-9]|[0-9][0-9][/][A-Z][a-z][a-z][/][0-9][0-9][0-9][0-9]|[0-9][0-9][-][A-Z][a-z][a-z][-][0-9][0-9][0-9][0-9]/'>output3.txt
cat output3.txt | awk 'END {print}'>outlast.txt
sed -i '$d' output3.txt
cat outlast.txt | tr -d '\n'>outputl.txt
cat outputl.txt>>output3.txt

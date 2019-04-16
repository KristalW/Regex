#!/bin/sh

cat Lab5_partII_Q1_input.txt | awk '/^(0+|0*1((10*1)|(01*0))*10*)$/{print}'>output1.txt

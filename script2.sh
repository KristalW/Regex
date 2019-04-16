#!/bin/sh

cat Lab5_partII_Q2_input.txt | awk '/red.*(pick-up|pick up|pickup).*truck.*[$][0-9].*|(pick-up|pick up|pickup).*truck.*red.*[$][0-9].*/'>output21.txt
sed 's/$/&\r/g' output21.txt>output2.txt

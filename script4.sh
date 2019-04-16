#!/bin/bash

cat ee_classes.html | awk '/^<div class="course-info expandable"/'>out1.txt
var=$(cat out1.txt)
awk 'BEGIN{}{gsub(/<div class="course-info expandable"/,"\t"i"\n");i++;print}' out1.txt |sed '/^$/d' >out2.txt
cat out2.txt | awk '/DEN@Viterbi/'>out3.txt
cat out3.txt | awk '/EE-5[0-9][0-9]/'>out5l.txt
cat out5l.txt | awk '/3[.]0 units/'>out3u.txt
cat out5l.txt | awk '/4[.]0 units/{print}'>out4u.txt
cat out4u.txt >> out3u.txt
cat out3u.txt | grep -o "EE 5[0-9][0-9].*:">outcode.txt
cat outcode.txt | tr '<' ' '>outee.txt
cat outee.txt | tr '>' ' '>outee1.txt
cat outee1.txt | awk '{print $1,$2,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13}'>outputee.txt
cat outputee.txt | tr -d '/'>output4.txt
sed -i "s/ span a h3 div//g" output4.txt
sed -i "s/ span a h3//g" output4.txt
sed -i "s/ span a//g" output4.txt
sed -i "s/ span//g" output4.txt
sed -i "s/ class=//" output4.txt
sed -i 's/"units"//' output4.txt

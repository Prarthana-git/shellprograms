#!/bin/bash

read -p " Enter Month: " m
read -p " Enter Day: " d
read -p " Enter Year: " y
if (( ($m <=12 && $d <=31 && $y <=2021) ))
then
     echo $d"/"$m"/"$y
fi

y1=$(($y-(14-$m)/12))
x=$(($y1+$y1/4-$y1/100+$y1/100))
m1=$(($m+12*((14-$m)/12)-2))
d1=$(((d+x+31*($m1/12))%7))

echo $y1" "$x" "$m1" "$d1


#!/bin/bash -x

read a b c

A=$(($a+$b*$c))
B=$(($a%$b+$c))
C=$(($c+$a+$b))
D=$(($a*$b+$c))

if [ $A -gt $B ]
then 
    min1=$(($B))
    max1=$(($A))
else
    max1=$(($B))
    min1=$(($A))
fi

if [ $C -gt $D ]
then
    max2=$(($C))
    min2=$(($D))
else
    max2=$(($D))
    min2=$(($C))
fi
if [ $max1 -gt $max2 ]
then
    max= $max1
    echo $max
else
    max= $max2
    echo $max
fi
if [ $min1 -gt $min2 ]
then
    min= $min1
    echo $min
else
    min= $min2
    echo $min
fi
 

#!/bin/bash -x

read n
if [ $n -ne 0 ]
then 
u=$(($n%10))
t=$(((($n/10))%10))
h=$(((($n/100))%10))
th=$(($n/1000))
fi
echo $th "Thousands" $h "Hundred" $t "Ten" $u "Unit" 


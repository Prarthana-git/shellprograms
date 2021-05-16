#!/bin/bash -x

n=$1
i=0
powerOfTwo=1
while [ $i -le $n ]
do
   echo $i" "$powerOfTwo
   powerOfTwo=$((2*$powerOfTwo))
   i=$(($i+1))
   if [ $powerOfTwo -eq 256 ]
   then
   break
   fi
done
 



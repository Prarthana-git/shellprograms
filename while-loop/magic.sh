#!/bin/bash -x

echo "Enter no between 1 to 100"
read n
while [[ $n -gt 0 || $n -lt 100 ]]
do
 num=$((RANDOM%100))
 if [ $n -gt $num ]
 then
   echo "No is too high"
 fi
 if [ $n -lt $num ]
 then
   echo "no is low"
 fi
 if [ $n -eq $num ]
 then
    echo "Yes The Number is" $num
    break
 fi
done


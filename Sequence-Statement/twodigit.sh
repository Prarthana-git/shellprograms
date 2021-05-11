#!/bin/bash -x
sum=0
N=5
i=1
while [ $i -le $N ]
do
digit=$((RANDOM%99))
sum=$(($sum+$digit))
i=$((i+1))
echo $digit
done
avg=$(( $sum / $N | bc ))
echo "The Sum is" $sum
echo "The Average is" $avg

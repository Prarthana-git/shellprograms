#!/bin/bash -x

num=$1
fact=1

for ((i=1; i<=num; i++))
do
  [ $((num/$i*$i )) ] && echo $i
  fact=$(($fact * $i))
done
  echo "Factorial of no" $fact


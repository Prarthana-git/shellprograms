#!/bin/bash -x

read -p "Enter a Range of number (a to b) : " a b

for (( i=$a; i<=$b; i++ ))
do

  m1=`echo | awk "{print sqrt($i)}"`
  m2=`printf %.0f "$m1"`
  check=0

  for (( j=2; j<=$m2; j++ ))
  do
    if [ $(($i%$j)) -eq 0 ]
    then
      check=1;
      break;
    fi
  done

  if [ $check -eq 0 ]
  then
        echo "Prime numbers in the given range are :" $i 
  fi
done

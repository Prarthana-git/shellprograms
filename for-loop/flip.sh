#!/bin/bash -x
heads=0
tails=0

while [ 0 ]
do
Flip=$(($(($RANDOM%10))%2))
 if [ $Flip -eq 1 ]
 then
  echo "Tail"
  tails=$(($tails+1))
  x=$((x+1))
 else
  echo "Head"
  heads=$(($heads+1))
  x=$((x+1))
 fi
 
 if [[ $tails -eq 11 || $heads -eq 11 ]]
 then
   break
 fi
echo "TOTAL HEADS" $heads
echo "TATAL TAILS" $tails
done


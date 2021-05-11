#!/bin/bash -x
heads=0
tails=0
for x in {1..10}
do
Flip=$(($(($RANDOM%10))%2))
 if [ $Flip -eq 1 ]
 then
  echo "Tail"
  tails=$(($tails+1))
 else
  echo "Head"
  heads=$(($heads+1))
 fi 
echo "TOTAL HEADS" $heads
echo "TATAL TAILS" $tails
done


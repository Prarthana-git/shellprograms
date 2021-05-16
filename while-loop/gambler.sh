#!/bin/bash -x

Money=100
win=0
lose=0
while [[ $Money -ne 200 && $Money -ne 0 ]]
do
gamble=$((RANDOM%2))
  if [ $gamble -eq 1 ]
  then 
     echo "Won the bet"
     win=$(($win+1))
     Money=$(($Money+1))
  else
     echo "Lose the bet"
     Money=$(($Money-1))
     lose=$(($lose+1))
  fi
done
Totalbets=$(($win+$lose))
echo "WIN" $win
echo "Money" $Money
echo "Lose" $lose
echo  "Totalbets" $Totalbets

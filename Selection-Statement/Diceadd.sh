#!/bin/bash

Dice1=$((((RANDOM%6))+1))
echo "The first dice no is" $Dice1
Dice2=$((((RANDOM%6))+1))
echo "The second dice no is" $Dice2
sum=$((Dice1+Dice2))
echo "The addition is" $sum
